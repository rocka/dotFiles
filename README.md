# dotFiles

some dotFiles, of my own

```js
.
├── .config                    // XDG_CONFIG_HOME
│   ├── alacritty
│   │   └── alacritty.yml
│   ├── aria2
│   │   ├── aria2.conf         // aria2 websocket JSON RPC and event hooks
│   │   ├── download-error.sh
│   │   ├── download-complete.sh
│   │   └── download-start.sh
│   ├── autostart
│   ├── bash
│   ├── environment.d
│   │   └── pam                // environment variables
│   ├── fcitx5
│   │   └── conf
│   │       └── clipboard.conf // clipboard paste primary
│   ├── fish
│   │   ├── conf.d
│   │   │   └── rocka.fish     // fish shell alias
│   │   ├── fish_plugins       // fisher packages
│   │   └── fish_variables     // color scheme
│   ├── fontconfig
│   │   ├── conf.d
│   │   │   ├── 10-replace.conf
│   │   │   └── 30-color-emoji.conf
│   │   └── fonts.conf
│   ├── gebaar
│   │   └── gebaard.toml       // kde flavored gestures
│   ├── git
│   │   └── config
│   ├── gtk-3.0
│   │   ├── bookmarks
│   │   ├── gtk.css
│   │   └── settings.ini       // GTK window button order
│   ├── htop
│   │   └── htoprc
│   ├── mpv
│   │   └── mpv.conf
│   ├── npm
│   │   └── npmrc              // npm local prefix
│   ├── nvim                   // neovim
│   │   └── init.vim
│   ├── octave
│   │   └── octaverc
│   ├── powerline
│   │   └── themes
│   │       └── tmux           // powerline segments in tmux
│   ├── python
│   │   └── init.py            // write python_histroy to $XDG_STATE_HOME
│   ├── systemd                // systemd user service
│   │   └── user
│   │       ├── aria2.service
│   │       ├── chromium-dbus-proxy.service // prevent chromium from using dark mode
│   │       └── ssh-agent.service
│   ├── tmux
│   │   └── tmux.conf          // minial powerline-enabled tmux config
│   ├── touchegg
│   │   └── touchegg.conf      // kde flavored touchpad gestures
│   └── vim
│   │   └── vimrc
│   ├── yarn
│   │   └── config
│   ├── yay
│   │   └── config.json
│   ├── chromium-flags.conf    // vaapi and overlay scrollbars
│   ├── ksmserverrc            // disable session restore
│   ├── kwinrc
│   ├── plasmashellrc          // clipboard actions
│   ├── user-dirs.dirs
│   └── user-dirs.locale
├── .gnupg
│   ├── dirmngr.conf           // openpgp key server
│   ├── gpg-agent.conf
│   └── gpg.conf
├── .local
│   ├── bin                    // global `bin`
│   │   ├── aria2-dl           // CLI tool for sending `aria2.addUri` to JSON RPC
│   │   ├── btw                // print a blue Arch
│   │   ├── chromium           // use `chromium-dbus-proxy`
│   │   ├── color-test         // test terminal colors
│   │   ├── firefox            // enable wayland and smooth touchpad scroll
│   │   ├── kwindesktopctl     // script to switch virtual desktop in kde
│   │   ├── syucnt             // count how many times you've `pacman -Syu`'d
│   │   ├── yd                 // simple GUI wrapper for `ydcv`
│   │   ├── telegram-desktop   // use kde dialog
│   │   ├── thunderbird        // enable wayland and smooth touchpad scroll
│   │   └── yt-dlp-wrapper     // `yt-dlp- GUI wrapper for clipboard actions
│   └── share
│       ├── applications       // modified desktop entries (for icon or description)
│       ├── dbus-1
│       │   └── services       // disable gwenview's `import photos`
│       │       └── org.telegram.desktop.desktop // telegram-desktop dbus activation
│       ├── solid
│       ├── icons              // custom icons
│       │   └── actions        // disable gwenview's `import photos`
│       └── yakuake
│           └── skins
├── LICENSE                    // WTFPL
└── README.md
```

> the file tree above can be generated by `tree -aL 4 -I .git`

- let `bash` read `~/.config/bash/bashrc`:

    ```bash
    # /etc/bash.bashrc
    RCFILE="${XDG_CONFIG_HOME:-$HOME/.local/share}/bash/bashrc"
    [ -r $RCFILE ] && . "${RCFILE}"
    unset RCFILE

    export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/bash/history"
    ```

- let `pam_env` read user env file:

    ```
    # /etc/pam.d/system-login
    session    required   pam_env.so           user_readenv=1 user_envfile=.config/environment.d/pam
    ```

- recommended fonts: [ttf-noto-vf][noto-vf]<sup>AUR</sup>, [otf-noto-sans-cjk][noto-sans-cjk]<sup>AUR</sup>, [otf-noto-serif-cjk][noto-serif-cjk]<sup>AUR</sup> ([noto-fonts-cjk][noto-cjk] is also fine), [ttf-go-noto-universal-temporal][noto-universal]<sup>AUR</sup>, [ttf-hack][hack], [ttf-blobmoji][blobmoji]<sup>AUR</sup>
- install [fisher][fisher] before using my fish_plugins
- (deprecated) install [touchegg][touchegg] for touchpad gestures support of libinput
- (deprecated) [gebaar][gebaar] for gestures support of libinput
- (deprecated) install package [`ydcv`][ydcv] (or [`ydcv-rs`][ydcv-rs]) and [`kdialog`][kdialog] before using the script `yd`
- install package [`yt-dlp`][yt-dlp] and [`kdialog`][kdialog] before using the script `yt-dlp-wrapper`
- some custom icons comes from [varlesh/breeze-extra](https://github.com/varlesh/breeze-extra)
- Yakuake theme: a modified version of [Breeze Prefect Dark][yakuake-theme]
- install [powerline][powerline] to use powerline in tmux & bash
- install [powerline-vim][powerline-vim] to use powerline in vim
- install [vim-airline][vim-airline] and [vim-airline-themes][vim-airline-themes] to use airline in neovim
- which KDE Plasma config file to find: [shalva97/kde-configuration-files](https://github.com/shalva97/kde-configuration-files)
- KWin hide titlebar for maximized windows:

    ```bash
    kwriteconfig5 --file ~/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true
    qdbus org.kde.KWin /KWin reconfigure
    ```

- KDE Plasma toggle widgets "locked" state

    ```bash
    qdbus org.kde.plasmashell /PlasmaShell evaluateScript "lockCorona(!locked)"
    ```

- KDE Plasma change "Meta" key behavior

    ```bash
    # default behavior, open application launcher
    kwriteconfig5 --file ~/.config/kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.plasmashell,/PlasmaShell,org.kde.PlasmaShell,activateLauncherMenu"
    # activate "Overview" effect
    kwriteconfig5 --file ~/.config/kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.kglobalaccel,/component/kwin,org.kde.kglobalaccel.Component,invokeShortcut,Overview"
    qdbus org.kde.KWin /KWin reconfigure
    ```

[noto-vf]: https://aur.archlinux.org/pkgbase/ttf-noto-vf
[noto-cjk]: https://www.archlinux.org/packages/extra/any/noto-fonts-cjk/
[noto-sans-cjk]: https://aur.archlinux.org/packages/otf-noto-sans-cjk
[noto-serif-cjk]: https://aur.archlinux.org/packages/otf-noto-serif-cjk
[noto-universal]: https://aur.archlinux.org/packages/ttf-go-noto-universal-temporal
[hack]: https://www.archlinux.org/packages/extra/any/ttf-hack/
[blobmoji]: https://aur.archlinux.org/packages/ttf-blobmoji/
[fisher]: https://github.com/jorgebucaran/fisher
[touchegg]: https://aur.archlinux.org/packages/touchegg/
[gebaar]: https://aur.archlinux.org/packages/gebaar/
[ydcv]: https://www.archlinux.org/packages/community/any/ydcv/
[ydcv-rs]: https://aur.archlinux.org/packages/ydcv-rs/
[kdialog]: https://www.archlinux.org/packages/extra/x86_64/kdialog/
[yt-dlp]: https://archlinux.org/packages/community/any/yt-dlp/
[yakuake-theme]: https://store.kde.org/p/1193435/
[powerline]: https://www.archlinux.org/packages/community/x86_64/powerline/
[powerline-vim]: https://www.archlinux.org/packages/community/x86_64/powerline-vim/
[vim-airline]: https://www.archlinux.org/packages/community/any/vim-airline/
[vim-airline-themes]: https://www.archlinux.org/packages/community/any/vim-airline-themes/
