# simple-tui

Simple TUI library for Bash scripts.

## Example

```bash
tui-print 'tui-print'
tui-print-warning 'tui-print-warning'
tui-error 'tui-error'

tui-print-group 'tui-print-group'
tui-done 'tui-done'
tui-print-group-end
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
