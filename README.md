# simple-tui

Simple TUI library for Bash scripts.

## Example

```bash
tui_info 'Test message'

tui_group 'Group'
tui_info 'This is a group'

tui_group 'Nested Group'
tui_info 'And this is a nested group'
tui_group_end
tui_group_end

tui_done 'Task done'

tui_warn 'Maybe important error'
tui_error 'Important error'
```

this looks:

![Example](img/example.png)

## Install

### Install with curl

```bash
eval "$(curl https://raw.githubusercontent.com/sei40kr/simple-tui/master/simple-tui.bash)"
```

### Install with Git

Clone as a submodule of your repository:

```bash
git submodule add https://github.com/sei40kr/simple-tui.git script_helpers/simple-tui
```

and source in your script:

```bash
. "/path/to/script_helpers/simple-tui/simple-tui.bash"
```
