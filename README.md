# .dotfiles


## Apps
Dotfiles manager: stow
WM: Hyprland
Bar: Waybar
Launcher: Rofi-wayland
Notifications: swaync
Screenshots: hyprshot
Wallpapers: hyprpaper
Lock: hyprlock
Logout: wlogout
Clipboard: cliphist + wl-clipboard
Display Manager: nwg-displays
GTK Settings: nwg-look
Network manager: nm-applet
Spotify Customization: Spicetify

Fonts: JetBrainsMono + Iosevka

TO DO: manage Qt / GTK configs (Catppuccin Mocha themes)

## Management
Using stow and the following folder structure:
```
home/
    /johncena/
        .config/
        .local/
            .share/
        .dotfiles/
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
```
When files already exist:
```
stow */ --adopt
git restore .
```
