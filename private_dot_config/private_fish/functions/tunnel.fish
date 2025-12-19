function tunnel --description "SSH Tunneling Helper"
    set --local server $argv[1]

    set --local l_port 8080
    if set --query argv[2]
        set l_port $argv[2]
    end

    set --local r_port 80
    if set --query argv[3]
        set r_port $argv[3]
    end

    if test -z "$server"
        echo "Usage: tunnel <server> [local_port] [remote_port]"
        return 1
    end

    echo "Forwarding local port $l_port to $server:$r_port via fw..."
    open "http://localhost:$l_port"
    ssh fw -L "$l_port:$server:$r_port"
end
