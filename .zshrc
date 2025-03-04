export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export LC_CTYPE=UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source $(nix path-info nixpkgs#oh-my-zsh)/share/oh-my-zsh/oh-my-zsh.sh

source $(nix path-info nixpkgs#zsh-autosuggestions)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $(nix path-info nixpkgs#zsh-powerlevel10k)/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

source $(nix path-info nixpkgs#zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"