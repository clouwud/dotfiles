{ colorScheme, ... }:
{
  services.dunst.enable = true;

  services.dunst.settings = {
    global = {
      mouse_left_click = "do_action";
      mouse_right_click = "context";
      mouse_middle_click = "close_current";
      frame_color = "#${colorScheme.palette.base03}";
      separator_color = "#${colorScheme.palette.base03}";
      font = "JetBrains Mono 12";
      max_icon_size = 100;
      shrink = true;
      word_wrap = "yes";
      offset = "(9, 9)";
      padding = 15;
      horizontal_padding = 15;
      dmenu = "rofi -dmenu -p dunst";
      corner_radius = 10;
      format = "<b>%s</b>\\n%b";
      sticky_history = "no";
      show_indicators = "no";
    };

    base16_low = {
      msg_urgency = "low";
      background = "#${colorScheme.palette.base00}";
      foreground = "#${colorScheme.palette.base07}";
      highlight = "#ffffff";
      timeout = 5;
    };

    base16_normal = {
      msg_urgency = "normal";
      background = "#${colorScheme.palette.base00}";
      foreground = "#${colorScheme.palette.base07}";
      highlight = "#ffffff";
      timeout = 5;
    };

    base16_critical = {
      msg_urgency = "critical";
      background = "#${colorScheme.palette.base00}";
      foreground = "#${colorScheme.palette.base08}";
      frame_color = "#${colorScheme.palette.base08}";
      timeout = 5;
    };
  };
}
