
source $(nix path-info nixpkgs#oh-my-zsh)/share/oh-my-zsh/oh-my-zsh.sh

source $(nix path-info nixpkgs#zsh-autosuggestions)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $(nix path-info nixpkgs#zsh-powerlevel10k)/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/Works/code/shell/.p10k.zsh.
[[ ! -f .p10k.zsh ]] || source .p10k.zsh

source $(nix path-info nixpkgs#zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh