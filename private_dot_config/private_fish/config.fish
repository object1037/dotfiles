alias ls 'exa'
alias nvimdiff 'nvim -d'

abbr -a la ls -a
abbr -a ll ls -l --git -h --icons
abbr -a lla ls -l --git -h --icons -a
abbr -a lst ls -T --icons

abbr pn pnpm

abbr gs git status
abbr ga git add
abbr gc git commit
abbr gpush git push origin
abbr gpull git pull origin
abbr glog git log --oneline

alias gl 'git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(black magenta)%d%Creset %s"'

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

starship init fish | source

zoxide init fish | source

# pnpm
set -gx PNPM_HOME "/Users/object1037/Library/pnpm"
fish_add_path "$PNPM_HOME"
# pnpm end
# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# opam configuration
source /Users/object1037/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

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

pyenv init - | source
