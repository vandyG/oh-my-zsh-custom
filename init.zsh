# Initialize starship prompt.
eval "$(starship init zsh)"

# Hook direnv to shell.
eval "$(direnv hook zsh)"

export PATH=$PATH:/usr/local/bin

# Run rclone sync
bash /home/vandy/work/rclone_sync.bash

# Add node to path.
export PATH="/home/linuxbrew/.linuxbrew/opt/node@22/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vandy/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vandy/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vandy/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vandy/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# LiveTex add to path
if [ -d "/usr/local/texlive/2024/bin/x86_64-linux" ] ; then
    path+=("/usr/local/texlive/2024/bin/x86_64-linux")
    export PATH
fi
