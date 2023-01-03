# Installation command for new computer

## Install Brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Add brew to zsh path

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/fbonvin/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Install brew

```
brew install fish
sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)
fish_add_path /opt/homebrew/bin
```

## Install programs

```
brew install imagemagick starship fisher wget
brew install firefox google-chrome figma iina iterm2 keyboardcleantool protonvpn raycast signal spotify visual-studio-code setapp hiddenbar shottr
brew install transmission --cask
```

## Dev setting

```
fisher install jorgebucaran/nvm.fish
nvm install lts
set --universal nvm_default_version lts
corepack enable
```

### Iterm color theme

```
wget https://raw.githubusercontent.com/enkia/tokyo-night-vscode-theme/master/tokyo-night.itermcolors
wget https://raw.githubusercontent.com/rose-pine/iterm/main/rose-pine.itermcolors
wget https://raw.githubusercontent.com/rose-pine/iterm/main/rose-pine-moon.itermcolors
wget https://raw.githubusercontent.com/rose-pine/iterm/main/rose-pine-dawn.itermcolors
brew tap homebrew/cask-fonts
brew install font-ibm-plex --cask
brew install --cask font-blex-mono-nerd-font
```

### SSH key generation

```
ssh-keygen -t ed25519 -C "flavien.bonvien@pm.me"
mkdir .ssh
vi ~/.ssh/config
```

#### Add in .ssh/config

```
Host \*.github.com
AddKeysToAgent yes
UseKeychain yes
IdentityFile ~/.ssh/github
```

### Add key to toolchain

```
ssh-add --apple-use-keychain ~/.ssh/github
pbcopy < ~/.ssh/github.pub
ssh -T git@github.com
```

## Fish functions

```
git clone git@github.com:flavienbonvin/fish_functions.git
ln -s ~/dev/fish_functions/functions/\* ~/.config/fish/functions/
```

## Starship config

```
mkdir -p ~/.config && touch ~/.config/starship.toml
```

### Populate config file with following config

```
[battery]
full_symbol = "🔋 "
charging_symbol = "⚡️ "
discharging_symbol = "💀 "

[[battery.display]]
threshold = 100
style = "green"
[[battery.display]]
threshold = 40
style = "yellow"

[[battery.display]]
threshold = 10
style = "red"
```

### Add starship on startup

```
echo "starship init fish | source" >> $HOME/.config/fish/config.fish
```
