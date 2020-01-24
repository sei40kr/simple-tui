#!/usr/bin/env bash

base_dir="$(cd "$(dirname "$0")/../.." && pwd)"
# shellcheck source=../../simple-tui.bash
. "${base_dir}/simple-tui.bash"

tui-print-prompt 'Are you sure to continue? [yn]'

while true; do
    read -n1 -r answer

    if [[ "$answer" == [yYnN]* ]]; then
        break
    else
        echo
        tui-print-prompt 'Invalid answer. Are you sure to continue? [yn]'
    fi
done
