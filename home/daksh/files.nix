{...}:
{
  # image viewer : nsxiv desktop entry
  xdg.desktopEntries.nsxiv = {
    name = "nsxiv";
    exec = "nsxiv";
    icon = "loupe";
    terminal = false;
    mimeType = [
      "image/jpeg"
      "image/png"
      "image/gif"
      "image/webp"
      "image/tiff"
      "image/x-tga"
      "image/vnd-ms.dds"
      "image/x-dds"
      "image/bmp"
      "image/vnd.microsoft.icon"
      "image/vnd.radiance"
      "image/x-exr"
      "image/x-portable-bitmap"
      "image/x-portable-graymap"
      "image/x-portable-pixmap"
      "image/x-portable-anymap"
      "image/x-qoi"
      "image/qoi"
      "image/svg+xml"
      "image/svg+xml-compressed"
      "image/avif"
      "image/heic"
      "image/jxl"
    ];
    type = "Application";
    comment = "Lightweight image viewer";
    genericName = "Image Viewer";
    categories = [
      "Graphics"
      "2DGraphics"
      "Viewer"
    ];
  };
  
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';


    ".icons/theme_McMojave" = {
      source = ./static/theme_McMojave;
      recursive = true;
    };
    ".icons/McMojave-cursors" = {
      source = ./static/McMojave-cursors;
      recursive = true;
    };

    # ".config/mpv/scripts/mpv-cheatsheet.js".source = ../../modules/mpv/mpv-cheatsheet.js;

    # ".npmrc".text = ''
    #         audit=false
    #         fund=false
    #   progress=false'';

    # ".config/zathura/zathurarc".text = '' 
    #   set notification-error-bg       "rgba(29,32,33,1)"     # bg
    #   set notification-error-fg       "rgba(251,73,52,1)"    # bright:red
    #   set notification-warning-bg     "rgba(29,32,33,1)"     # bg
    #   set notification-warning-fg     "rgba(250,189,47,1)"   # bright:yellow
    #   set notification-bg             "rgba(29,32,33,1)"     # bg
    #   set notification-fg             "rgba(184,187,38,1)"   # bright:green
    #
    #   set completion-bg               "rgba(80,73,69,1)"     # bg2
    #   set completion-fg               "rgba(235,219,178,1)"  # fg
    #   set completion-group-bg         "rgba(60,56,54,1)"     # bg1
    #   set completion-group-fg         "rgba(146,131,116,1)"  # gray
    #   set completion-highlight-bg     "rgba(131,165,152,1)"  # bright:blue
    #   set completion-highlight-fg     "rgba(80,73,69,1)"     # bg2
    #
    #   # Define the color in index mode
    #   set index-bg                    "rgba(80,73,69,1)"     # bg2
    #   set index-fg                    "rgba(235,219,178,1)"  # fg
    #   set index-active-bg             "rgba(131,165,152,1)"  # bright:blue
    #   set index-active-fg             "rgba(80,73,69,1)"     # bg2
    #
    #   set inputbar-bg                 "rgba(29,32,33,1)"     # bg
    #   set inputbar-fg                 "rgba(235,219,178,1)"  # fg
    #
    #   set statusbar-bg                "rgba(80,73,69,1)"     # bg2
    #   set statusbar-fg                "rgba(235,219,178,1)"  # fg
    #
    #   set highlight-color             "rgba(250,189,47,0.5)" # bright:yellow
    #   set highlight-active-color      "rgba(254,128,25,0.5)" # bright:orange
    #
    #   set default-bg                  "rgba(29,32,33,1)"     # bg
    #   set default-fg                  "rgba(235,219,178,1)"  # fg
    #   set render-loading              true
    #   set render-loading-bg           "rgba(29,32,33,1)"     # bg
    #   set render-loading-fg           "rgba(235,219,178,1)"  # fg
    #
    #   # Recolor book content's color
    #   set recolor-lightcolor          "rgba(29,32,33,1)"     # bg
    #   set recolor-darkcolor           "rgba(235,219,178,1)"  # fg
    #   set recolor                     "true"
    #   set recolor-keephue             "true"                 # keep original color
    #
    #   # confs
    #   set render-loading "false"
    #   set scroll-step 50
    #   unmap f
    #   map f toggle_fullscreen
    #   map [fullscreen] f toggle_fullscreen
    #
    #   set font "JetBrains Mono 15"
    # '';
    #
    # ".Xresources".text = ''
    #   Xcursor.theme: McMojave-cursors
    #   Xcursor.size: 15
    #   Nsxiv.window.background: #1D2021
    #   Nsxiv.bar.background: #1D2021
    #   Nsxiv.bar.foreground: #EBDBB2
    #   Nsxiv.bar.font: JetBrainsMono-15
    # '';

    ".config/uwsm/env".text = ''
      export QT_AUTO_SCREEN_SCALE_FACTOR=1
      export QT_QPA_PLATFORM=wayland;xcb
      export QT_QPA_PLATFORMTHEME=qt5ct
      export XDG_SESSION_TYPE=wayland
      export XDG_CURRENT_DESKTOP=Hyprland
      export XDG_SESSION_DESKTOP=Hyprland
      export XCURSOR_THEME=McMojave Cursors
      export XCURSOR_SIZE=35
      # export LIBVA_DRIVER_NAME=nvidia
      # export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export HYPRSHOT_DIR=/home/daksh/Pictures/screenshots
    '';

    # tell hyprland order of gpus to use.
    # card0 - nvidia dedicated
    # card1 - amd integrated
    ".config/uwsm/env-hyprland".text = ''
      export HYPRCURSOR_THEME=McMojave
      export HYPRCURSOR_SIZE=35
      # export AQ_DRM_DEVICES="/dev/dri/card1:/dev/dri/card0"
    '';

    ".config/vesktop/themes/customgruv.dark.css".text = ''
      @import url('https://refact0r.github.io/midnight-discord/midnight.css');
      @import url('https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&display=swap');
      /* customize things here */
      :root {
        /* fonts */
        --font: 'JetBrains Mono';

      	/* top left corner text */
      	--corner-text: 'Vesktop';

      	/* color of status indicators and window controls */
      	--online-indicator: #b8bb26; /* change to #23a55a for default green */
      	--dnd-indicator: #d3869b; /* change to #f13f43 for default red */
      	--idle-indicator: #d79921; /* change to #f0b232 for default yellow */

      	/* accent colors */
      	--accent-1: #7caea3; /* links */
      	--accent-2: #d79921; /* general unread/mention elements */
      	--accent-3: #d79921; /* accent buttons */
      	--accent-4: #d79921; /* accent buttons when hovered */
      	--accent-5: #d79921; /* accent buttons when clicked */
      	--mention: rgba(215, 153, 33, 0.08); /* mentions & mention messages */
      	--mention-hover: rgba(215, 153, 33, 0.2); /* mentions & mention messages when hovered */

      	/* text colors */
      	--text-0: var(--bg-4); /* text on colored elements */
      	--text-1: var(--text-2); /* other normally white text */
      	--text-2: hsl(37, 40%, 84%); /* headings and important text */
      	--text-3: hsl(37, 40%, 72%); /* normal text */
      	--text-4: hsl(37, 20%, 60%); /* icon buttons and channels */
      	--text-5: #d4be9866; /* muted channels/chats and timestamps */

      	/* background and dark colors */
      	--bg-1: hsl(0, 0%, 18%); /* dark buttons when clicked */
      	--bg-2: hsl(20, 5%, 15%); /* dark buttons */
      	--bg-3: hsl(10, 3%, 10%); /* spacing, secondary elements */
      	--bg-4: hsl(0, 0%, 6%); /* main background color */
      	--hover: rgba(160, 130, 120, 0.1); /* channels and buttons when hovered */
      	--active: rgba(160, 130, 120, 0.2); /* channels and buttons when clicked or selected */
      	--message-hover:  rgba(160, 130, 120, 0.1); /* messages when hovered */

      	/* amount of spacing and padding */
      	--spacing: 8px;

      	/* animations */
      	/* ALL ANIMATIONS CAN BE DISABLED WITH REDUCED MOTION IN DISCORD SETTINGS */
      	--list-item-transition: 0.2s ease; /* channels/members/settings hover transition */
      	--unread-bar-transition: 0.2s ease; /* unread bar moving into view transition */
      	--moon-spin-transition: 0.4s ease; /* moon icon spin */
      	--icon-spin-transition: 1s ease; /* round icon button spin (settings, emoji, etc.) */

      	/* corner roundness (border-radius) */
      	// --roundness-xl: 0px; /* roundness of big panel outer corners */
      	// --roundness-l: 0px; /* popout panels */
      	// --roundness-m: 14px; /* smaller panels, images, embeds */
      	// --roundness-s: 8px; /* members, settings inputs */
      	// --roundness-xs: 6px; /* channels, buttons */
      	// --roundness-xxs: 6px; /* searchbar, small elements */

          --roundness-xl: 0px; /* roundness of big panel outer corners */
      	--roundness-l: 0px; /* popout panels */
      	--roundness-m: 0px; /* smaller panels, images, embeds */
      	--roundness-s: 0px; /* members, settings inputs */
      	--roundness-xs: 0px; /* channels, buttons */
      	--roundness-xxs: 0px; /* searchbar, small elements */

      	/* direct messages moon icon */
      	/* change to block to show, none to hide */
      	--discord-icon: none; /* discord icon */
      	--moon-icon: block; /* moon icon */
      	--moon-icon-url: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 27 27' width='24' height='24'%3E%3Cpath fill='currentColor' d='M0 0h7v1H6v1H5v1H4v1H3v1H2v1h5v1H0V6h1V5h1V4h1V3h1V2h1V1H0m13 2h5v1h-1v1h-1v1h-1v1h3v1h-5V7h1V6h1V5h1V4h-3m8 5h1v5h1v-1h1v1h-1v1h1v-1h1v1h-1v3h-1v1h-2v1h-1v1h1v-1h2v-1h1v2h-1v1h-2v1h-1v-1h-1v1h-6v-1h-1v-1h-1v-2h1v1h2v1h3v1h1v-1h-1v-1h-3v-1h-4v-4h1v-2h1v-1h1v-1h1v2h1v1h1v-1h1v1h-1v1h2v-2h1v-2h1v-1h1M8 14h2v1H9v4h1v2h1v1h1v1h1v1h4v1h-6v-1H5v-1H4v-5h1v-1h1v-2h2m17 3h1v3h-1v1h-1v1h-1v2h-2v-2h2v-1h1v-1h1m1 0h1v3h-1v1h-2v-1h1v-1h1'%3E%3C/path%3E%3C/svg%3E");
      	--moon-icon-size: cover;

      	/* filter uncolorable elements to fit theme */
      	/* (just set to none, they're too much work to configure) */
      	--login-bg-filter: none; /* login background artwork */
      	--green-to-accent-3-filter: none; /* add friend page explore icon */
      	--blurple-to-accent-3-filter: none; /* add friend page school icon */
      }
      /* disable DM spin */
      .wrapper_d281dd:hover > .childWrapper__01b9c::before,
      .wrapper_d281dd.selected_f5ec8e > .childWrapper__01b9c::before {
      	background: var(--text-0);
      	transform: rotate(-0deg) scale(0.8);
      }
    '';
  };

}
