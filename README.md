# My .dotfiles

These are heavily influenced by Mathias Bynens (https://mths.be/dotfiles) excellent dotfiles repository.

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/benripley/dotfiles.git && cd dotfiles && source bash/bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bash/bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bash/bootstrap.sh
```

To update later on, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults. Also this will setup the Solarized Dark theme for Terminal, iTerm, and Sublime.

```bash
./osx/.osx
```

### Install Homebrew formulae and Casks

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew/brew.sh
```

I've also configured some [Casks](http://caskroom.io/) that I find useful everyday.

```bash
./brew/brew-cask.sh
```