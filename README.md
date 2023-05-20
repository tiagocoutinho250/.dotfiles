# .dotfiles

You would then create a dotfiles subdirectory and move all the files there:
```
home/
    /brandon/
        .config/
        .local/
            .share/
        dotfiles/
            bash/
                .bashrc
                .bash_profile
                .bash_logout
            uzbl/
                .config/
                    uzbl/
                        [...some files]
                .local/
                    share/
                        uzbl/
                            [...some files]
            vim/
                .vim/
                    [...some files]
                .vimrc
```
Then, perform the following commands:
```
$ cd ~/dotfiles
$ stow bash
$ stow uzbl
$ stow vim

