# rl-nano

A terminal text editor written in [rl-lang](https://github.com/rl-lang).

## Usage

```bash
nano filename.txt     # open a file
nano                  # create a new untitled file
```

## Keybinds

| Key         | Action         |
|-------------|----------------|
| `Ctrl+S`    | Save file      |
| `Ctrl+Q`    | Quit           |
| `↑ ↓ ← →`   | Move cursor    |
| `Home`      | Start of line  |
| `End`       | End of line    |
| `Enter`     | New line       |
| `Backspace` | Delete left    |
| `Delete`    | Delete right   |

## Features

- Open and edit any text file
- Scrolls automatically as you navigate past the screen edge
- Line numbers in the gutter
- Status bar showing current file and last action
- Merges lines correctly on Backspace at start of line and Delete at end of line
