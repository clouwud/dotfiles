{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  nixpkgs.config.allowUnfree = true;
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
    
    # c/cpp
    gcc
    gnumake
    cmake
    libtool

    # rust
    rustup

    # go
    go

    # node
    nodejs

    # java
    jdk
    openjfx

    # python
    python313

    # hyprland
    grim
    swww
    slurp
    hyprshot
    hyprpaper
    wf-recorder
    wl-clipboard
    brightnessctl
    playerctl

    # tools 
    yazi
    yt-dlp
    ani-cli
    dust
    ffmpeg
    speedtest-rs
    nix-search-cli
    neofetch
    gh
    imhex

    # gtk
    gtk3
    gruvbox-gtk-theme
    nwg-look
    xorg.xrdb

    # image viewer
    nsxiv

    # application launcher
    rofi
 
    # audio 
    pavucontrol
    pulsemixer
    pamixer

    # terminal
    kitty

    # browser
    firefox
    qutebrowser
    brave

    # torrent
    qbittorrent

    # editor
    neovim

    # misc
    stremio
    thunderbird
    vesktop
    webcord
    quassel
    youtube-music
    mpv

    # game 
    # wine64
    # winetricks
    # vulkan-tools
    # openal
    # dxvk
    # mono
    # lutris

    # fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome
    powerline-fonts
    powerline-symbols
    jetbrains-mono
    iosevka
    nerd-fonts.fira-code
    nerd-fonts.symbols-only
    nerd-fonts.jetbrains-mono 
    nerd-fonts.iosevka
  ];
}
