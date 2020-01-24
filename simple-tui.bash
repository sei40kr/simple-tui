__tui_color_red='\033[00;31m'
__tui_color_green='\033[00;32m'
__tui_color_yellow='\033[00;33m'
__tui_color_none='\033[0m'

__tui_indent=0

tui-increment-indent() {
    __tui_indent="$((__tui_indent+2))"
}

tui-decrement-indent() {
    __tui_indent="$((__tui_indent-2))"
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
