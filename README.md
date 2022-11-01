# dotfiles

## Instalation
```sh
git clone https://github.com/karolhor/dotfiles ~/.dotfiles
cd ~/.dotfiles && ./install
```

## Naming conventions
There are a few special files in the hierarchy:

* **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
* **topic/*.zsh**: Any files ending in `.zsh` get loaded into your environment.
* **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.

* **topic/completion.zsh**: Any file named `completion.zsh` is loaded right before `end` scripts and is expected to setup autocomplete.

* **topic/end.zsh**: Any file named `end.zsh` is loaded last.

* **topic/install.sh**: Any file named `install.sh` is executed when you run `./install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.

* **topic/update.sh**: Any file named `update.sh` is executed when you run `./update`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.

## Credits
* https://github.com/holman/dotfiles
* https://github.com/caarlos0/dotfiles
