# NeoVim

Step by step to get something like:

![neovim](/assets/nvim.png)

## Instalation

### Using Bob

This way is using a version manager to neovim.

In `debian 10` or lower, this way will not work, so install from source. Because
is required `GLIBC 229>=` and it's avaialable only in `debian 11`.

First of all, install a neovim manager

<https://github.com/MordechaiHadad/bob/releases>

Download the zip file, extract and install nightly version

Using a `Debian` or `Ubuntu` download `bob-linux-rustls-x86_64.zip` otherwise `bob-linux-x86_64.zip`

```bash
unzip bob-linux-rustls-x86_64.zip
chmod +x bob
./bob install nightly
```

### Install from source

See detailed guide [here](https://github.com/neovim/neovim/wiki/Building-Neovim)

In debian, to install newer version

```bash
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## General Setup

### Dependencies

Some dependencies is used by plugins, is usefull has every installed in system
before configurate

In debian

```bash
sudo apt install xclip
```

Install nodeJS >= 14.14:

```bash
curl -sL install-node.vercel.app/lts | bash
```

### Files

Create the following directory

```bash
mkdir -p ~/.config/nvim
```

Move the conf files from this repository to `nvim` conf folder

```bash
mv config/* ~/.config/nvim
```

## Vim Plug

Vim plug is used to manage some plugins

Github page [here](https://github.com/junegunn/vim-plug)

To install simple run

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Init nvim and install plugins using

```bash
:PlugInstall
```

After that, you can remove the comments in `init.vim` file

```bash
sed -i 's/^"//g' ~/.config/nvim/init.vim
```

## Coc

Install plugins and extenstions like VSCode

To do that inside nvim install `coc-marketplace`

```bash
:CocInstall coc-marketplace
```

Close and open nvim

After that install some usefull plugins with

```bash
:CocList marketplace
```

Install the following itens

```bash
coc-go
coc-lua
coc-python
coc-markdownlint
coc-discord-presence
```

## Tips

Some usefull tips:

- `<F6>` or `<F7>` to change the color scheme in actual nvim instance
- `<Ctrl>+p` to search a file using fzf
- `<Ctrl>+f` to open coc action menu (used to fix imports, line erros, etc.)
- `<Ctrl>+t` open a new terminal in bottom of screen.
