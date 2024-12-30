# Puntar Dotfiles

Another dotfiles repo to centralize all the config files in a single place and make it easier to move it to another computer.

For now, my setup includes:

## Dependencies:

- [i3](https://i3wm.org/) as a window manager;
- [Gnu Stow](https://www.gnu.org/software/stow/) for manage symbolic links;
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) as terminal;
- [Kitty](https://sw.kovidgoyal.net/kitty/) as a terminal emulator;
- [Oh my zsh](https://ohmyz.sh/) as a zsh framework;
- [Tmux](https://github.com/tmux/tmux/wiki) as a terminal multiplexer and helps me managing windows and panes;
- [Nvm](https://github.com/nvm-sh/nvm) to manage node.js environments;
- [Neovim](https://neovim.io/) as a code editor;
  - To properly install neovim, check the instructions below;
- Xscreensaver, for fancy screen saver on my hacker machine;

## Installing

1. Clone this project to root folder of your computer;
2. Run `stow .` to generate symbolic links for every config file;
   Note: zsh installation may add a .zshrc file on root, delete that file before running stow.
3. Install all the dependencies listed above in the same order;
4. Install oh-my-zsh plugins:
   - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md);
   - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh);
   - [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting?tab=readme-ov-file#oh-my-zsh);
   - [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete#manual-installation);
     - Check this [tutorial](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df) for ready to go config about zsh-autocomplete;
5. Install [Tmux plugin manager](https://github.com/tmux-plugins/tpm);
6. Install [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#using-linux-package-managers) for tmux-sessionizer;
7. Grant permission to tmux-sessionizer file;
8. Check this chatgpt story to install i3 monitors config;

## Neovim config

My config for neovim editor was extremely inspired (to not say totally copied 😅) by [The Primeagen's setup](https://youtu.be/w7i4amO_zaE?si=MZnSUGCVOdmvv3hF) and [Josean's](https://youtu.be/vdn_pKJUda8?si=kq5_91qoim-P4lbG).

### Before installing:

Ensure you have the following dependencies installed on your computer:

- [Make](https://www.gnu.org/software/make/);
- [Ripgrep](https://github.com/BurntSushi/ripgrep#installation);
- [Nerd Fonts](https://linuxspin.com/install-nerd-fonts-on-ubuntu/)
- [eslint_d](https://www.npmjs.com/package/eslint_d);
- [prettierd](https://github.com/fsouza/prettierd);

Neovim might have some issues to start if you don't have Node.js installed (Mason errors) and eslint_d on JS projects.
I've tried installing Neovim manually and worked fine on Ubuntu.

zshrc file has a pnpm statement really specific to my user on the machine I've installed. This can lead into issuesif installing nodejs through pnpm.
