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
fish_add_path ~/go/bin
fish_add_path ~/.local/bin
fish_add_path ~/bin

if which mise >/dev/null 2>&1
    mise activate fish | source
    mise complete --shell fish | source
end
if which opam >/dev/null 2>&1
    source ~/.opam/opam-init/init.fish >/dev/null 2>&1; or true
end

if which nvim >/dev/null 2>&1
    alias vim=nvim
end
if which hx >/dev/null 2>&1
    set -gx EDITOR hx
    set -gx VISUAL $EDITOR
end
if which helix >/dev/null 2>&1
    alias hx=helix
    set -gx EDITOR helix
    set -gx VISUAL $EDITOR
end

if which bat >/dev/null 2>&1
    # Also used by the delta tool
    set -gx BAT_THEME Dracula
end

if which starship >/dev/null 2>&1
    starship init fish | source
end
if which zoxide >/dev/null 2>&1
    zoxide init fish | source
    alias cd=z
    alias cdi=zi
end
if which fzf >/dev/null 2>&1
    fzf --fish | source
end
if which eza >/dev/null 2>&1
    alias ls=eza
end
