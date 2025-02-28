dot files copied from:

https://github.com/shdennlin/dotfiles/tree/main
https://github.com/KevinNitroG/dotfiles

todo

add tmux powerline or zsh equiv
add tmux sensible
add nvim config

figure out adding ssh keys with rage
add rage to installer

create scoop installer for windows

- Install chezmoi and init, apply, and delete binary: _([docs](https://www.chezmoi.io/install))_
  - shell
    ```sh
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --ssh --depth 1 --purge-binary viedgral
    ```
  - pwsh
    ```powershell
    iex "&{$(irm 'https://get.chezmoi.io/ps1')} -- init --apply --ssh --depth 1 --purge-binary viedgral"
    ```
