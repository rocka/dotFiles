# dotFiles

some dotFiles, of my own

```js
.
├── .aria2                     // aria2
│   ├── aria2.conf             // ├── config
│   └── aria2-daemon           // └── script for run as daemon
├── .config                    // XDG_CONFIG_HOME
│   ├── Code                   // Visual Studio Code
│   │   └── User
│   │       └── settings.json
│   ├── fish
│   │   ├── conf.d
│   │   │   └── rocka.fish     // fishshell alias
│   │   └── fishfile           // fisherman     
│   ├── fontconfig
│   │   └── fonts.conf         // fontconfig
│   └── libinput-gestures.conf // kde flavored libinput-gestures config
├── .eslintrc.json             // default settings for eslint
├── .gitconfig                 // git proxy and alias
├── LICENSE                    // WTFPL
├── .local
│   └── bin                    // local bin/ path
│       └── yd                 // stupid GUI wrap for `ydcv`
├── .pac                       // genpac
│   ├── config.ini             // ├── config
│   └── user-rules.txt         // └── gfwlist user rules
├── README.md                  // this README
├── .vimrc                     // vim
├── .xprofile                  // set some env
└── .zshrc                     // oh-my-zsh
```

> the file tree above can be generated by `tree -aL 4 -I .git`

1. install `Noto Sans`, `Noto Serif` and `Noto Emoji` font family before using my fontconfig
2. install [fisherman](https://github.com/fisherman/fisherman) before using my fishfile
3. [libinput-gestrures](https://github.com/bulletmark/libinput-gestures)
4. [genpac](https://github.com/JinnLynn/genpac)
5. install oh-my-zsh plugin [zsh-syntax-hignlighting](https://github.com/zsh-users/zsh-syntax-highlighting) before using my `.zshrc`
6. recommend powerline font: [DroidSansMonoSlashed](https://github.com/powerline/fonts/tree/master/DroidSansMonoSlashed)
7. install package `ydcv` and `kdialog` before using the script `yd`
