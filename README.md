# dotFiles

home, sweet `$HOME`

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
│   │   └── bashrc             // bash alias
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
│   │   └── script-opts
│   │   │   └── uosc.conf      // uosc subtiltes and stats button
│   │   ├── input.conf         // shortcuts
│   │   └── mpv.conf           // hwdec, window size, screenshot file name, etc
│   ├── npm
│   │   └── npmrc              // npm local prefix
│   ├── nvim                   // neovim
│   │   └── init.vim
│   ├── octave
│   │   └── octaverc
│   ├── Phonon
│   │   └── mpv.conf           // hwdec for phonon-mpv
│   ├── powerline
│   │   └── themes
│   │       └── tmux           // powerline segments in tmux
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
│   ├── baloofileinformationrc // disable rating/tags/comment in dolphin hover tooltip
│   ├── baloofilerc            // disable baloo search index
│   ├── chromium-flags.conf    // kwallet, overlay scrollbars, vaapi, ozone wayland
│   ├── code-flags.conf        // -> electron-flags.conf
│   ├── electron-flags.conf    // ozone wayland
│   ├── kded5rc                // disable some background service
│   ├── kservicemenurc         // remove some right-click menu items in dolphin
│   ├── ksmserverrc            // disable session restore
│   ├── kwinrc
│   ├── plasma-localerc        // LC_TIME=en_SE.UTF-8 for ISO8601 datetime format
│   ├── plasmashellrc          // clipboard actions
│   ├── purposerc              // cleanup kde's share menu
│   ├── user-dirs.dirs
│   └── user-dirs.locale
├── .local
│   ├── bin                    // global `bin`
│   │   ├── aria2-dl           // CLI tool for sending `aria2.addUri` to JSON RPC
│   │   ├── btw                // print a blue Arch
│   │   ├── chromium-dbus-proxied // use `chromium-dbus-proxy`
│   │   ├── color-test         // test terminal colors
│   │   ├── firefox            // bwrap ~/.mozilla
│   │   ├── krita              // im module and xwayland scalling
│   │   ├── kwindesktopctl     // script to switch virtual desktop in kde
│   │   ├── proton-run         // run command within proton wine prefix
│   │   ├── syucnt             // count how many times you've `pacman -Syu`'d
│   │   ├── telegram-desktop   // use kde dialog
│   │   ├── thunderbird        // bwrap ~/.thunderbird, enable wayland
│   │   ├── yd                 // simple GUI wrapper for `ydcv`
│   │   └── yt-dlp-wrapper     // `yt-dlp` GUI wrapper for clipboard actions
│   └── share
│       ├── applications       // modified desktop entries (for icon or description)
│       ├── dbus-1
│       │   └── services
│       │       └── org.telegram.desktop.desktop // telegram-desktop dbus activation
│       ├── gnupg
│       │   ├── dirmngr.conf   // openpgp key server
│       │   ├── gpg-agent.conf
│       │   └── gpg.conf
│       ├── icons              // custom icons
│       ├── kio
│       │   └── servicemenus
│       │       └── unzip.desktop // unzip as gbk or jis in dolphin
│       ├── konsole            // konsole color schemes
│       ├── solid
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

- recommended fonts:
  - latin: [ttf-roboto][roboto], [ttf-noto-vf][noto-vf]<sup>AUR</sup>
  - cjk: [otf-noto-sans-cjk][noto-sans-cjk]<sup>AUR</sup>, [otf-noto-serif-cjk][noto-serif-cjk]<sup>AUR</sup> ([noto-fonts-cjk][noto-cjk] is also fine)
  - fallback: [ttf-noto-megamerge][noto-megamerge]<sup>AUR</sup> (get rid of endless "Noto Sans *" in font selection menu)
  - monospace: [ttf-hack][hack]
  - emoji: [ttf-blobmoji][blobmoji]<sup>AUR</sup>
- install [fisher][fisher] before using my fish_plugins
- install [uosc][uosc] (and [thumbfast][thumbfast]) for mpv customization
- install [phonon-mpv-git][phonon] to get rid of vlc in KDE 6
- (deprecated) install [touchegg][touchegg] for touchpad gestures support of libinput
- (deprecated) [gebaar][gebaar] for gestures support of libinput
- install [`ydcv-rs`][ydcv-rs] and [`kdialog`][kdialog] before using the script `yd`
- install package [`yt-dlp`][yt-dlp] and [`kdialog`][kdialog] before using the script `yt-dlp-wrapper`
- some custom icons comes from [varlesh/breeze-extra](https://github.com/varlesh/breeze-extra)
- Yakuake theme: a modified version of [Breeze Prefect Dark][yakuake-theme]
- install [powerline][powerline] to use powerline in tmux & bash
- install [powerline-vim][powerline-vim] to use powerline in vim
- install [vim-airline][vim-airline] and [vim-airline-themes][vim-airline-themes] to use airline in neovim
- which KDE Plasma config file to find: [shalva97/kde-configuration-files](https://github.com/shalva97/kde-configuration-files)
- KWin hide titlebar for maximized windows:

    ```bash
    kwriteconfig6 --file kwinrc --group Windows --key BorderlessMaximizedWindows true
    qdbus6 org.kde.KWin /KWin reconfigure
    ```

- KDE Plasma toggle widgets "locked" state

    ```bash
    qdbus6 org.kde.plasmashell /PlasmaShell evaluateScript "lockCorona(!locked)"
    ```

- KDE Plasma change "Meta" key behavior

    ```bash
    # default behavior, open application launcher
    kwriteconfig6 --file kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.plasmashell,/PlasmaShell,org.kde.PlasmaShell,activateLauncherMenu"
    # activate "Overview" effect
    kwriteconfig6 --file kwinrc --group ModifierOnlyShortcuts --key Meta "org.kde.kglobalaccel,/component/kwin,org.kde.kglobalaccel.Component,invokeShortcut,Overview"
    qdbus6 org.kde.KWin /KWin reconfigure
    ```

- KWin Wayland enable fcitx5 input method

    ```bash
    # set fcitx5 as "virtual keyboard"
    kwriteconfig6 --notify --file kwinrc --group Wayland --key InputMethod '/usr/share/applications/fcitx5-wayland-launcher.desktop'
    # enable "virtual keyboard" support
    qdbus6 org.kde.KWin /VirtualKeyboard org.kde.kwin.VirtualKeyboard.enabled true
    ```

[roboto]: https://archlinux.org/packages/extra/any/ttf-roboto/
[noto-vf]: https://aur.archlinux.org/pkgbase/ttf-noto-vf
[noto-cjk]: https://www.archlinux.org/packages/extra/any/noto-fonts-cjk/
[noto-sans-cjk]: https://aur.archlinux.org/packages/otf-noto-sans-cjk
[noto-serif-cjk]: https://aur.archlinux.org/packages/otf-noto-serif-cjk
[noto-megamerge]: https://aur.archlinux.org/packages/ttf-noto-megamerge
[hack]: https://www.archlinux.org/packages/extra/any/ttf-hack/
[blobmoji]: https://aur.archlinux.org/packages/ttf-blobmoji/
[fisher]: https://github.com/jorgebucaran/fisher
[uosc]: https://github.com/tomasklaen/uosc
[thumbfast]: https://github.com/po5/thumbfast
[phonon]: https://github.com/archlinuxcn/repo/tree/master/archlinuxcn/phonon-mpv-git
[touchegg]: https://aur.archlinux.org/packages/touchegg/
[gebaar]: https://aur.archlinux.org/packages/gebaar/
[ydcv-rs]: https://aur.archlinux.org/packages/ydcv-rs/
[kdialog]: https://www.archlinux.org/packages/extra/x86_64/kdialog/
[yt-dlp]: https://archlinux.org/packages/community/any/yt-dlp/
[yakuake-theme]: https://store.kde.org/p/1193435/
[powerline]: https://www.archlinux.org/packages/community/x86_64/powerline/
[powerline-vim]: https://www.archlinux.org/packages/community/x86_64/powerline-vim/
[vim-airline]: https://www.archlinux.org/packages/community/any/vim-airline/
[vim-airline-themes]: https://www.archlinux.org/packages/community/any/vim-airline-themes/
