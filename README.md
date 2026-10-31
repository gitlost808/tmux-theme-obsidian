# Obsidian Ember

A dark tmux theme with graphite surfaces, burgundy highlights, and warm ember
accents. Designed to sit alongside **Obsidian Ember Contrast Readable for
WeeChat**, with silver text that stays easy to read.

## Screenshots

### Status bar and split panes

> Screenshot slot: `assets/screenshots/overview.png` — show the session label,
> active and inactive window tabs, status clock, and a focused split pane.

<!-- Replace the slot above with this image after capturing it:
![Obsidian Ember status bar and split panes](assets/screenshots/overview.png)
-->

### Copy-mode selection

> Screenshot slot: `assets/screenshots/copy-mode.png` — show the burgundy
> copy-mode selection and the surrounding status bar.

<!-- Replace the slot above with this image after capturing it:
![Obsidian Ember copy-mode selection](assets/screenshots/copy-mode.png)
-->

See the [screenshot capture guide](assets/screenshots/README.md) for an isolated
preview session and the expected filenames.

## What it styles

- A bottom status bar with the session name, window tabs, active command, clock,
  and date.
- Burgundy highlights for the active window and session; coral activity alerts
  and a brighter red bell alert.
- Quiet grey pane borders with an ember accent around the focused pane.
- Matching command prompts, messages, copy-mode selections, and pane numbers.

The theme uses the standard 256-color palette. No plugins, Nerd Fonts, or
Powerline symbols are required. It leaves your key bindings, mouse settings,
shell, and terminal configuration alone. The terminal and applications supply
their own background and text colors.

## Install

Use **tmux 3.2 or newer** and a terminal with 256-color support. See the
[tmux installation guide](https://github.com/tmux/tmux/wiki/Installing) if needed.

From this folder, copy the theme:

```sh
mkdir -p ~/.config/tmux/themes
cp obsidian.conf ~/.config/tmux/themes/obsidian.conf
```

Add this line to `~/.tmux.conf` (or your existing tmux configuration file), after
any other theme settings:

```tmux
source-file ~/.config/tmux/themes/obsidian.conf
```

Apply it to a running tmux server:

```sh
tmux source-file ~/.config/tmux/themes/obsidian.conf
```

To load directly from a checkout instead, add a `source-file` line using the
absolute path to its `obsidian.conf`. The executable `obsidian.tmux` entry point
also lets [TPM](https://github.com/tmux-plugins/tpm) load the theme when the
repository is installed as a plugin.

## Palette

These are the standard xterm RGB equivalents; your terminal may customize its
palette.

| Role | tmux color | RGB |
| --- | --- | --- |
| Status background | `colour235` | `#262626` |
| Pane borders / messages | `colour238` | `#444444` |
| Active window / session / selection | `colour52` | `#5f0000` |
| Active pane / dividers | `colour167` | `#d75f5f` |
| Activity / active pane number | `colour203` | `#ff5f5f` |
| Bell background | `colour124` | `#af0000` |
| Last window / inactive pane number | `colour244` | `#808080` |
| Secondary text | `colour250` | `#bcbcbc` |
| Primary text | `colour252` | `#d0d0d0` |

## Customize

Place overrides **after** the line that loads the theme. For example:

```tmux
# Move the status bar to the top.
set -g status-position top

# Show the hostname in place of the active command.
set -g status-right '#[fg=colour250]#H #[fg=colour167]│ #[fg=colour252,bold]%H:%M #[fg=colour250]%d.%m '
```

Window activity highlighting needs activity monitoring, which tmux configures
separately. To enable it for all windows:

```tmux
set -g monitor-activity on
```

To remove the theme, delete its loading line and restart tmux when convenient.
Existing sessions keep the styles already applied until you load another theme
or restart the server.
