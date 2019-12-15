# -----------------------------------------------------------------------------
# Copyright (c) 2019, Justine Kizhakkinedath
# All rights reserved
#
# Licensed under the terms of MIT License
# See LICENSE file in the project root for full information.
# -----------------------------------------------------------------------------

# Settings
export TERM="xterm-256color"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=vim
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PYTHONBREAKPOINT=pudb.set_trace
GPG_TTY=$(tty)
export GPG_TTY

add_to_path () {
    if ! echo "$PATH" | grep -Eq "(^|:)$1($|:)" ; then
        export PATH="$PATH:$1"
    fi
}


# Add to path
add_to_path "$HOME/dotfiles/scripts"
add_to_path "$HOME/Library/Python/3.7/bin"
add_to_path "$HOME/.cargo/bin"
add_to_path "$HOME/flutter/bin"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/.emacs.d/bin"

. ../../git-subrepo/.rc

eval "$(fasd --init auto)"
eval "$(pipenv --completion)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/justinkizhakkinedath/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/justinkizhakkinedath/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/justinkizhakkinedath/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/justinkizhakkinedath/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
