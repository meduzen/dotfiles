// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // Choose either "stable" for receiving highly polished,
    // or "canary" for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BEAM',

    // set to true for blinking cursor
    cursorBlink: true,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '16px 14px 12px', // default: '12px 14px'

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    // make sure to use a full path if the binary name doesn't work
    // (e.g `C:\\Windows\\System32\\bash.exe` instead of just `bash.exe`)
    // if you're using powershell, make sure to remove the `--login` below
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    // bell: 'SOUND',
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: true,

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    // https://github.com/hharnisc/hypercwd
    hypercwd: {
      initialWorkingDirectory: '~/Code'
    },

    //https://github.com/Soutar/hyperterm-summon
    summon: {
      hideDock: false,
      hideOnBlur: false,
      hotkey: 'Alt+Super+O'
    },

    // https://github.com/chabou/hyper-pane
    paneNavigation: {
      debug: false,
      hotkeys: {
        navigation: {
          up: 'ctrl+alt+up',
          down: 'ctrl+alt+down',
          left: 'ctrl+alt+left',
          right: 'ctrl+alt+right'
        },
        jump_prefix: 'ctrl+alt', // completed with 1-9 digits
        permutation_modifier: 'shift', // Added to jump and navigation hotkeys for pane permutation
        maximize: 'meta+enter'
      },
      showIndicators: true, // Show pane number
      indicatorPrefix: '', // default: '^⌥'
      indicatorStyle: { // Added to indicator <div>
        position: 'absolute',
        top: '3px',
        left: '3px',
        color: 'orange',
        opacity: '.8',
        fontSize: '9px'
      },
      focusOnMouseHover: false
    },

    // https://github.com/SwarShah/hyper-custom-touchbar
    hyperCustomTouchbar: [
      {
        label: 'front',
        options: [
          { label: 'watch', command: 'npm run watch' },
          { label: 'prod', command: 'npm run prod' },
          { label: 'dev', command: 'npm run dev' },
          { label: 'browserslist', command: 'npx browserslist' },
          { label: '?', command: 'npm run' },
        ]
      },
      {
        label: 'npm',
        options: [
          { label: 'list', command: 'npm list --depth=0' },
          { label: '🔭', command: 'npm audit' },
          { label: '💉', command: 'npm audit fix' },
          { label: '🚛📦', command: 'npm install ', prompt: true }, // alternative emoji: 🌌
          { label: '🕸', command: 'npm outdated' },
          { label: 'update', command: 'npm update' },
          { label: '☄️', command: 'npm install' }, // alternative emoji: 🌌
          { label: '🗑', command: 'rm -rf node_modules' },
          { label: '🗑🧹☄️', command: 'rm -rf node_modules && rm package-lock.json && npm cache clean --force && npm install' },
          { label: 'help', command: 'npm' },
        ]
      },
      {
        label: 'artisan',
        options: [
          { label: 'artisan', command: 'php artisan ', prompt: true },
          { label: 'clear', command: 'php artisan view:clear && php artisan config:clear && php artisan route:clear' },
          { label: 'routes', command: 'php artisan route:list' },
          { label: 'migrate', command: 'php artisan migrate' },
          { label: 'fresh', command: 'php artisan migrate:fresh' },
          { label: 'link', command: 'php artisan storage:link' },
          { label: 'up', command: 'php artisan up' },
          { label: 'down', command: 'php artisan down' },
          { label: 'list', command: 'php artisan' },
        ],
      },
      {
        label: 'composer',
        options: [
          { label: 'dump-autoload', command: 'composer dump-autoload' },
          { label: 'install', command: 'composer install' },
          { label: 'require', command: 'composer require ', prompt: true },
          { label: 'show', command: 'composer show -s -t' },
          { label: 'outdated', command: 'composer outdated' },
          { label: 'update', command: 'composer update' },
          { label: 'list', command: 'composer' },
        ]
      },
      {
        label: 'valet',
        options: [
          { label: 'share', command: 'valet share' },
          { label: '🔒', command: 'valet secure' },
          { label: '🔓', command: 'valet unsecure' },
          { label: 'list', command: 'valet' },
        ]
      },
      {
        label: 'cd',
        options: [
          { label: '..', command: 'cd ..' },
          { label: 'Code', command: 'cd ~/Code' },
          { label: '🖕 IE', command: 'cd ~/Code/canistop', backgroundColor: '#18bcef' },
          { label: '--', command: 'cd ~/Code/dash-dash-media.scss' },
        ]
      },
      {
        label: 'git',
        options: [
          { label: 'diff',  command: 'git diff' },
          { label: 'status',  command: 'git status' },
          { label: 'log',  command: 'glog' }, // see my .bashrc
          { label: 'add .',  command: 'git add .' },
          { label: 'clone ',  command: 'git clone ', prompt: true },
        ]
      },
      {
        label: '🧞‍♂️', // see my .bashrc
        options: [
          { label: 'aliases',  command: 'aliases' },
          { label: 'hosts',  command: 'hostfile' },
          { label: 'ssh',  command: 'sshssh' },
          { label: 'dotfiles',  command: 'cd ~/dotfiles' },
          { label: 'show',  command: 'showhiddenfiles' },
          { label: 'hide',  command: 'hidehiddenfiles' },
          { label: '🌤', command: 'weather' },
        ]
      },
      {
        label: 'vim',
        options: [
          { label: 'quit', command: ':q!', esc: true },
          { label: 'save & quit', command: ':x', esc: true },
        ]
      },
    ],
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    "hypercwd",
    "hyperterm-close-on-left",
    "hyperterm-paste",
    "hyperterm-summon",
    "hyper-custom-touchbar",
    "hyper-pane",
    "hyper-stylesheet",
    "hyper-vsplit-fix",
    // "hyperlayout", // try later

    // themes
    "hyper-snazzy",
    // "hyperterm-cobalt2-theme",
  ]
};
