function last_cmd --on-event fish_postexec
    set --global last_cmd $argv[1]
    set --global last_status $status
end

function fish_title
    set --local date_info "[$(date +%H:%M:%S)]"
    set --local user_info "@$USER"
    set --local dir_info (basename $PWD)
    set --local cmd_info

    if git rev-parse --git-dir >/dev/null 2>&1
        set --local branch (git branch --show-current 2>/dev/null)
        if test -z "$branch"
            set branch (git rev-parse --short HEAD 2>/dev/null)
        end
        set --local dirty (git status --porcelain 2>/dev/null)
        if test -n "$dirty"
            set branch "$branch*"
        end
        set dir_info "$dir_info:($branch)"
    end

    if test -n "$last_cmd"
        set --local cmd (string split --fields 1 ' ' -- $last_cmd)
        if string match --regex --quiet '^\.{0,2}/|\.\.$|/$' -- $cmd
            set cmd "cd"
        end
        set cmd_info $cmd
        set --local result $last_status
        if test $result -ne 0
            set result "$result*"
        end
        set cmd_info "$cmd_info:($result)"
    end

    echo -n (string join ' ' $date_info $user_info $dir_info $cmd_info)
end
