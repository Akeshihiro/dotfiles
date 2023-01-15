function fish_prompt
    if which powerline-go >/dev/null 2>&1
        powerline-go -error $status -jobs (count (jobs -p)) -numeric-exit-codes -shell bare -newline -cwd-max-depth 1
    end
end
