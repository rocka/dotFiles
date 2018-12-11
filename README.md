# dotFiles

some dotFiles, of my own

```js

.
├── .bashrc
├── .config                    // XDG_CONFIG_HOME
│   ├── aria2.conf             // aria2 websocket rpc
│   ├── autostart
│   │   └── ssh-add.desktop
│   ├── chromium-flags.conf    // enable hw video decode
│   ├── fish
│   │   ├── conf.d
│   │   │   └── rocka.fish     // fish shell alias
│   │   └── fishfile           // fisher packages
│   ├── fontconfig
│   │   ├── conf.d
│   │   │   ├── 10-replace.conf
│   │   │   ├── 20-telegram-desktop.conf
│   │   │   └── 30-color-emoji.conf
│   │   └── fonts.conf
│   ├── gtk-3.0
│   │   ├── bookmarks
│   │   ├── gtk.css
│   │   └── settings.ini       // GTK window button order
│   ├── latte                  // Latte Dock
│   │   └── Top Panel.layout.latte
│   └── libinput-gestures.conf // kde flavored libinput-gestures config
│   └── systemd                // systemd user service
│       └── user
│           ├── aria2.service
│           ├── powerlined.service
│           └── ssh-agent.service
├── .eslintrc.js               // default settings for eslint
├── .gitconfig                 // git proxy and alias
├── .gnupg
│   ├── gpg-agent.conf
│   └── gpg.conf
├── .icons
│   └── default
│       └── index.theme        // fix cursor style in KDE
├── LICENSE                    // WTFPL
├── .local
│   ├── bin                    // global `bin`
│   │   └── yd                 // simple GUI wrapper for `ydcv`
│   └── share
│       ├── solid
│       │   └── actions        // disable gwenview's `import photos`
│       ├── TelegramDesktop
│       │   └── tdata
│       └── yakuake
│           └── skins
├── .npmrc
├── .pac                       // config for genpac (deprecated now)
│   ├── config.ini             // ├── config
│   └── user-rules.txt         // └── gfwlist user rules
├── .pam_environment           // environment variables
├── README.md
└── .vimrc
```

> the file tree above can be generated by `tree -aL 4 -I .git`

1. fonts needed in my fontconfig: [`noto-fonts`][noto], [`noto-fonts-cjk`][noto-cjk], [`ttf-hack`][hack], [`ttf-fira-code`][fira-code],  [`ttf-droid-monovar`][droid-monovar]<sup>AUR</sup>, [`ttf-sarasa-gothic`][sarasa]<sup>AUR</sup>, [`noto-fonts-emoji-blob`][blobmoji]<sup>AUR</sup>
2. install [fisher][fisher] before using my fishfile
3. [libinput-gestrures][gestrures]
4. `.pac` is config for [genpac][genpac] (deprecated now)
5. install package [`ydcv`][ydcv] and [`kdialog`][kdialog] before using the script `yd`
6. Yakuake theme: a modified version of [Breeze Prefect Dark][yakuake-theme]
7. Telegram tray icon: [Telegram Breeze icons for systray][tg-icon]

[noto]: https://www.archlinux.org/packages/extra/any/noto-fonts/
[noto-cjk]: https://www.archlinux.org/packages/extra/any/noto-fonts-cjk/
[hack]: https://www.archlinux.org/packages/extra/any/ttf-hack/
[fira-code]: https://www.archlinux.org/packages/community/any/ttf-fira-mono/
[droid-monovar]: https://aur.archlinux.org/packages/ttf-droid-monovar/
[sarasa]: https://aur.archlinux.org/packages/ttf-sarasa-gothic/
[blobmoji]: https://aur.archlinux.org/packages/noto-fonts-emoji-blob/
[fisher]: https://github.com/jorgebucaran/fisher
[gestrures]: https://github.com/bulletmark/libinput-gestures
[genpac]: https://github.com/JinnLynn/genpac
[ydcv]: https://www.archlinux.org/packages/community/any/ydcv/
[kdialog]: https://www.archlinux.org/packages/extra/x86_64/kdialog/
[yakuake-theme]: https://store.kde.org/p/1193435/
[tg-icon]: https://store.kde.org/p/1192975
