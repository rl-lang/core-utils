# core-utils

A collection of Unix core utilities reimplemented in [rl-lang](https://github.com/rl-lang/rl) - a statically-typed, expression-based scripting language built in Rust.

This repo serves as a real-world showcase of rl-lang's standard library, demonstrating file I/O, process control, terminal manipulation, and more.

---

## Utilities

| Tool    | Description                                        |
|---------|----------------------------------------------------|
| `cat`   | Print file contents to stdout                      |
| `cp`    | Copy a file to a destination                       |
| `mv`    | Move/rename a file                                 |
| `rm`    | Delete a file                                      |
| `ls`    | List files in the current directory                |
| `echo`  | Print arguments to stdout                          |
| `head`  | Print the first N lines of a file                  |
| `tail`  | Print the last N lines of a file                   |
| `grep`  | Search for a pattern in a file (with color output) |
| `wc`    | Count lines, words, and bytes in a file            |
| `rlsh`  | A minimal interactive shell                        |
| `nano`  | A terminal text editor (with syntax highlighting)  |

---

## Highlight: rl-nano

`nano` is the most feature-complete tool in this collection. It's a terminal text editor written entirely in rl-lang, including a hand-written syntax highlighter for rl-lang itself.
> **Note:** Syntax highlighting is currently being optimized for performance.

**Features:**
- Open and edit any text file
- rl-lang syntax highlighting (keywords, types, strings, numbers, operators, comments)
- Line numbers in the gutter
- Status bar showing filename and last action
- Automatic scrolling as the cursor moves past the screen edge
- Correct line merging on `Backspace` at line start and `Delete` at line end

**Keybinds:**

| Key          | Action       |
|--------------|--------------|
| `Ctrl+S`     | Save         |
| `Ctrl+Q`     | Quit         |
| `↑ ↓ ← →`    | Move cursor  |
| `Home`       | Start of line |
| `End`        | End of line  |
| `Enter`      | New line     |
| `Backspace`  | Delete left  |
| `Delete`     | Delete right |

---

## Usage

First, [install rl-lang](https://github.com/rl-lang/rl).

Then run any utility directly:

```bash
rl run cat/cat.rl myfile.txt
rl run grep/grep.rl myfile.txt pattern
rl run head/head.rl myfile.txt 10
rl run tail/tail.rl myfile.txt 5
rl run wc/wc.rl myfile.txt
rl run echo/echo.rl hello world
rl run ls/ls.rl
rl run cp/cp.rl src.txt dst.txt
rl run mv/mv.rl old.txt new.txt
rl run rm/rm.rl file.txt
rl run rlsh/main.rl
```

For nano (multi-file project), use the `rl.toml` manifest:

```bash
cd nano
rl dev          # open a new file
rl run src/main.rl myfile.txt   # open an existing file
```

---

## Pre-built binaries

Compiled binaries for Linux and Windows are available on the [Releases](../../releases) page, built automatically via GitHub Actions on every release.

---

## CI

Every push and pull request runs `rl-check` on the nano source files via the [`rl-lang/rl-check`](https://github.com/rl-lang/rl-check) GitHub Action. Coverage for the remaining utilities will be added as the action matures..

---

## Related

- [rl-lang](https://github.com/rl-lang/rl) - the language interpreter
- [rl-lang VS Code extension](https://marketplace.visualstudio.com/publishers/MohamedGonem) - syntax highlighting for `.rl` files and more
