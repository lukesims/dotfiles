export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.opencode/bin:$HOME/.config/composer/vendor/bin:$PATH"

export LANG=en_GB.UTF-8

export BAT_THEME="ansi"
export EZA_COLORS="da=30:gu=37:uu=37"

if [ -n "$SSH_CONNECTION" ]; then
	export EDITOR="nano"
else
	export EDITOR="zed --wait"
fi
