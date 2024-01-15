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

## Install Fish

```
brew install fish
sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)
fish_add_path /opt/homebrew/bin
```

## Install programs

```
brew install imagemagick starship fisher wget
brew install arc firefox google-chrome proton-drive protonvpn iina iterm2 keyboardcleantool raycast signal spotify visual-studio-code cleanshot bartender anytype languagetool
brew install --cask transmission
brew install --cask macs-fan-control
brew install --cask figma
brew install --cask obsisian
```

### Proton specific

```
brew install mkcert jq haproxy bash nss
```

## Dev setting

```
fisher install jorgebucaran/nvm.fish
nvm install lts
set --universal nvm_default_version lts
corepack enable
```

### Configure terminal

```
fisher install IlanCosman/tide@v6
tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Solid --prompt_connection_andor_frame_color=Dark --prompt_spacing=Compact --icons='Few icons' --transient=No
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

Add SSH key to github

## Fish functions

```
git clone git@github.com:flavienbonvin/fish_functions.git
ln -s ~/dev/fish_functions/.config/fish/functions/* ~/.config/fish/functions/
ln -s ~/dev/fish_functions/.config/starship.toml ~/.config/
rm -rf g*.fish *-act.fish *-mail.fish update.fish
rm clean.fish run-all.fish test-acc.fish validate-a*
```

### Add starship on startup

```
echo "starship init fish | source" >> $HOME/.config/fish/config.fish
```
