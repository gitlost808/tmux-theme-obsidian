#!/usr/bin/env sh
# Load the theme from its checkout, including when invoked by TPM.
set -eu

theme_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
exec tmux source-file "$theme_dir/obsidian.conf"
