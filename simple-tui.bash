__tui_indent=0

tui-increment-indent() {
    __tui_indent="$((__tui_indent+2))"
}

tui-decrement-indent() {
    __tui_indent="$((__tui_indent-2))"
}


tui-red() {
    local text="$1"

    echo "\033[31m${text}\033[m"
}

tui-green() {
    local text="$1"

    echo "\033[32m${text}\033[m"
}

tui-yellow() {
    local text="$1"

    echo "\033[33m${text}\033[m"
}


tui-print() {
    local -a args=( "$@" )

    printf "%${__tui_indent}s" ''
    echo -e "${args[@]}"
}

tui-print-group() {
    local -a args=( "$@" )

    tui-print '>' "${args[@]}"
    tui-increment-indent
}

tui-print-group-end() {
    tui-decrement-indent
}

tui-print-warning() {
    local -a args=( "$@" )

    tui-print "${__tui_color_yellow}!" "${args[@]}" "${__tui_color_none}" >&2
}

tui-done() {
    local -a args=( "$@" )

    tui-print "${__tui_color_green}✓" "${args[@]}" "${__tui_color_none}"
}

tui-error() {
    local -a args=( "$@" )

    tui-print "${__tui_color_red}☓" "${args[@]}" "${__tui_color_none}" >&2
}
