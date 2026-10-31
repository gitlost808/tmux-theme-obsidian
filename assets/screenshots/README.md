# Capturing screenshots

Capture the actual theme in your terminal, then add these PNG files here:

| Filename | What to show |
| --- | --- |
| `overview.png` | Session label, window tabs, a split pane, and the status clock. |
| `copy-mode.png` | Copy-mode selection with the status bar visible. |

From the repository root, in a terminal **outside tmux**, start an isolated
preview server:

```sh
tmux -L obsidian-preview -f "$PWD/obsidian.conf" new-session -s obsidian
```

This loads the theme without your normal tmux configuration. It uses tmux's
default `Ctrl-b` prefix and key bindings:

1. Press `Ctrl-b`, then `,` to rename the first window to `shell`.
2. Press `Ctrl-b`, then `c` to create another window; rename it to `code`.
3. Press `Ctrl-b`, then `%` to split the window vertically. Press `Ctrl-b`, then
   an arrow key to move focus and see the active pane border.
4. Capture the terminal with your desktop's screenshot tool as `overview.png`.
5. Print a few lines of text, press `Ctrl-b`, then `[` to enter copy mode, and
   use the arrow keys to move the cursor. With emacs copy-mode keys, press
   `Ctrl-Space` to begin a selection; with vi keys, press `Space`. Move the cursor
   to extend it and capture the selection as `copy-mode.png`. Press `Escape`
   (emacs) or `q` (vi) to exit copy mode.

Copy-mode keys depend on your `EDITOR` and `VISUAL` environment variables. See
the [tmux manual](https://man.openbsd.org/tmux#WINDOWS_AND_PANES) for the key tables.

Use a dark terminal background for the intended appearance. The theme only
styles tmux; terminal fonts, shell prompts, and application colors come from
your own setup. Use sample text and avoid capturing private session contents.

When finished, run this from another terminal to stop only the preview server:

```sh
tmux -L obsidian-preview kill-server
```

In the main [README](../../README.md), replace each screenshot slot with its
commented image line. Keep the filenames above so the links work.
