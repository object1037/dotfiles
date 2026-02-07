alias ls 'eza'
alias nvimdiff 'nvim -d'

abbr -a la ls -a
abbr -a ll ls -l --git -h --icons --no-user --time-style=iso
abbr -a lla ls -l --git -h --icons --no-user --time-style=iso -a
abbr -a lst ls -T --icons

abbr pn pnpm

abbr gs git status
abbr ga git add
abbr gc git commit
abbr gpush git push origin
abbr gpull git pull origin
abbr glog git log --oneline

alias gl 'git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(black magenta)%d%Creset %s"'

abbr -a --position anywhere -- --help '--help | bat -plhelp'
abbr -a --position anywhere -- -h '-h | bat -plhelp'

set -gx MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"

set fish_color_command brwhite --bold
set fish_color_keyword "#F0ABFC"
set fish_color_quote "#86EFAC"
set fish_color_redirection "#FCA5A5"
set fish_color_end white
set fish_color_error "#FF5252"
set fish_color_param "#93C5FD"
set fish_color_comment "#64748B"
set fish_color_operator "#FCD34D"
set fish_color_escape "#D8B4FE"
set fish_color_autosuggestion "#94A3B8"

set fish_greeting "Happy Hacking!"

set -gx EDITOR 'code -w'

# PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/bin
#set -x PATH $HOME/.local/bin $PATH
#set -x PATH $HOME/.nodebrew/current/bin $PATH
#set -x PATH $HOME/.rbenv/shims $PATH
#set -x PATH $HOME/.pyenv/shims $PATH
#set -x PATH $HOME/bin $PATH

set -gx LANG ja_JP.UTF-8

function fish_title
    echo $_ ' '
    pwd
end

set -gx GPG_TTY (tty)

starship init fish | source

zoxide init fish | source

pyenv init - | source

set -U nvm_default_version latest

set -gx HOMEBREW_FORBIDDEN_FORMULAE "node"

###-begin-pnpm-completion-###
function _pnpm_completion
  set cmd (commandline -o)
  set cursor (commandline -C)
  set words (count $cmd)

  set completions (eval env DEBUG=\"" \"" COMP_CWORD=\""$words\"" COMP_LINE=\""$cmd \"" COMP_POINT=\""$cursor\"" SHELL=fish pnpm completion-server -- $cmd)

  if [ "$completions" = "__tabtab_complete_files__" ]
    set -l matches (commandline -ct)*
    if [ -n "$matches" ]
      __fish_complete_path (commandline -ct)
    end
  else
    for completion in $completions
      echo -e $completion
    end
  end
end

complete -f -d 'pnpm' -c pnpm -a "(_pnpm_completion)"
###-end-pnpm-completion-###

# opam configuration
source /Users/object1037/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# fzf configuration
set -gx RUNEWIDTH_EASTASIAN 0
set -gx FZF_CTRL_T_OPTS "
    --preview 'bat -n --color=always --style=numbers --line-range=:500 {}'
    --bind 'ctrl-/:change-preview-window(down|hidden|)'" 
set -gx FZF_CTRL_R_OPTS "
    --preview 'echo {}' --preview-window up:3:hidden:wrap
    --bind 'ctrl-/:toggle-preview'
    --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
    --color header:italic
    --header 'Press CTRL-Y to copy command into clipboard'"
set -gx FZF_ALT_C_OPTS "--preview 'ls -T --icons {}'"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/object1037/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# pnpm
set -gx PNPM_HOME "/Users/object1037/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
