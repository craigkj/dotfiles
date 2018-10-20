# craig does dotfiles

Your dotfiles are how you personalise your system, and make managing your custom config a breeze, especially when provisioning new machines.

This started by forking https://github.com/holman/dotfiles, adding prezto (https://github.com/sorin-ionescu/prezto) and bits and pieces from elsewhere, including https://github.com/paulirish/dotfiles.

Zach Holman wrote a blog post on dotfiles, its well [worth a read](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/). It is well worth spending some time on your dotfiles, learning a bit about how the tools work and how they can make your developer experience more pleasant. You will thank yourself the next time you pick up a new machine!

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
# Get the dotfiles
git clone https://github.com/craigkj/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Install https://github.com/sorin-ionescu/prezto.git submodule
git submodule init
git submodule update

# Make zsh your default shell
chsh -s /bin/zsh

# Get started
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

```sh
script install
```

This will install the items from Brewfile. You will likely want to edit the content of this file.

Please see zpresto.symlink/README.md for more info on the prezto options. (Also here https://github.com/sorin-ionescu/prezto.git)

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.
