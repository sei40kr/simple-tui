#!/usr/bin/env bash

base_dir="$(cd "$(dirname "$0")/../.." && pwd)"
# shellcheck source=../../simple-tui.bash
. "${base_dir}/simple-tui.bash"

tui-print 'tui-print'
tui-print-warning 'tui-print-warning'
tui-error 'tui-error'

tui-print-group 'tui-print-group'
tui-done 'tui-done'
tui-print-group-end
