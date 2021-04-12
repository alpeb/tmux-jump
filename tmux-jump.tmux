#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CURRENT_DIR/scripts/utils.sh

# https://superuser.com/a/538719/260967
tmux bind-key $(get_tmux_option "@jump-key" "j") copy-mode \\\; run-shell -b "$CURRENT_DIR/scripts/tmux-jump.sh"
