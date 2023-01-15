if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx PAGER less
set -gx EDITOR nvim
set -gx VISUAL $EDITOR
set -gx TERM xterm-256color

fish_add_path ~/.dotnet/tools
if [ -d "/usr/lib/jvm/default" ]
    set -gx JAVA_HOME /usr/lib/jvm/default
    fish_add_path $JAVA_HOME/bin
end
fish_add_path ~/.cargo/bin
if which go >/dev/null 2>&1
    fish_add_path (go env GOPATH)/bin
end
fish_add_path ~/.local/bin
fish_add_path ~/bin

if which nvim >/dev/null 2>&1
    alias vim=nvim
end
if which helix >/dev/null 2>&1
    alias hx=helix
end
