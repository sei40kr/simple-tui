__tui_indent=0

tui-increment-indent() {
    __tui_indent="$((__tui_indent+2))"
}

tui-decrement-indent() {
    __tui_indent="$((__tui_indent-2))"
}


tui-red() {
    local text="$1"

    echo -e "\033[31m${text}\033[m"
}

tui-green() {
    local text="$1"

    echo -e "\033[32m${text}\033[m"
}

tui-yellow() {
    local text="$1"

    echo -e "\033[33m${text}\033[m"
}


tui-print() {
    local message="$1"

    printf "%${__tui_indent}s%s\n" '' "$message"
}

tui-print-group() {
    local message="$1"

    tui-print "> ${message}"
    tui-increment-indent
}

tui-print-group-end() {
    tui-decrement-indent
}

tui-print-warning() {
    local message="$1"

    tui-print "$(tui-yellow "! ${message}")" >&2
}

tui-done() {
    local message="$1"

    tui-print "$(tui-green "✓ ${message}")"
}

tui-error() {
    local message="$1"

    tui-print "$(tui-red "☓ ${message}")" >&2
}
