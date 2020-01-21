__tui_color_red='\033[00;31m'
__tui_color_green='\033[00;32m'
__tui_color_yellow='\033[00;33m'
__tui_color_none='\033[0m'

__tui_print_indent=0

__tui_print() {
    local -a args=( "$@" )

    printf "%${__tui_print_indent}s" ''
    echo "${args[@]}"
}

tui_group() {
    local -a args=( "$@" )

    __tui_print '>' "${args[@]}"
    __tui_print_indent="$((__tui_print_indent+2))"
}

tui_group_end() {
    __tui_print_indent="$((__tui_print_indent-2))"
}

tui_info() {
    local -a args=( "$@" )

    __tui_print '-' "${args[@]}"
}

tui_warn() {
    local -a args=( "$@" )

    __tui_print "${__tui_color_yellow}!" "${args[@]}" "${__tui_color_none}" >&2
}

tui_done() {
    local -a args=( "$@" )

    __tui_print "${__tui_color_green}✓" "${args[@]}" "${__tui_color_none}"
}

tui_error() {
    local -a args=( "$@" )

    __tui_print "${__tui_color_red}☓" "${args[@]}" "${__tui_color_none}" >&2
}
