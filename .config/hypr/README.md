# Keybindings Configuration for Hyprland

This repository provides an overview and setup guide for custom keybindings in the Hyprland window manager. Below is a detailed list of keybindings that enhance productivity, window management, multimedia control, and workspace navigation.

### Requirements
- **Hyprland**: A dynamic tiling Wayland compositor.
- **Dependencies**:
  - `wpctl` for volume and microphone control.
  - `brightnessctl` for adjusting screen brightness.
  - `playerctl` for media control.

---

## Keybindings Overview

### Main Modifier Key
- **Main Modifier**: The primary key modifier is set to **SUPER** (Windows key).
  ```plaintext
  $mainMod = SUPER
  ```

### Basic Application Shortcuts
| Key Combination          | Action                   |
|--------------------------|--------------------------|
| `$mainMod + RETURN`      | Launch terminal (`$terminal`) |
| `$mainMod + SPACE`       | Open application menu (`$menu`) |
| `$mainMod + W`           | Open web browser (`$browser`) |
| `$mainMod + F`           | Open file manager (`$fileManager`) |
| `$mainMod + M`           | Launch music application (`$music`) |
| `Print`                  | Capture screenshot (`$screenshot`) |

### Window Management
| Key Combination              | Action                       |
|------------------------------|------------------------------|
| `$mainMod + Q`               | Close active window          |
| `$mainMod + T`               | Toggle floating mode         |
| `$mainMod + P`               | Enable pseudo-tiling         |
| `$mainMod + J`               | Toggle split direction       |
| `$mainMod + SHIFT + F`       | Toggle fullscreen mode       |
| `$mainMod + SHIFT + C`       | Color pick (requires `hyprpicker -a`) |
| `$mainMod + ALT + Arrow`     | Move window in direction     |

### Workspace Management
#### Switching Workspaces
| Key Combination    | Action                |
|--------------------|-----------------------|
| `$mainMod + [1-9]` | Switch to workspace 1-9 |
| `$mainMod + 0`     | Switch to workspace 10 |
| `$mainMod + CTRL + Arrow`| Switch to next/previous workspace |

#### Moving Windows to Workspaces
| Key Combination           | Action                   |
|---------------------------|--------------------------|
| `$mainMod + SHIFT + [1-9]`| Move active window to workspace 1-9 |
| `$mainMod + SHIFT + 0`    | Move active window to workspace 10 |
| `$mainMod + SHIFT + Arrow`| Move window to next/previous workspace |

### Focus Navigation
| Key Combination           | Action                       |
|---------------------------|------------------------------|
| `$mainMod + Arrow keys`   | Move focus in direction      |
| `ALT + Tab`               | Cycle through windows        |

### Special Workspaces
| Key Combination                | Action                         |
|--------------------------------|--------------------------------|
| `$mainMod + S`                 | Toggle "magic" special workspace |
| `$mainMod + SHIFT + S`         | Move window to special workspace (`magic`) |

### Mouse Controls
| Mouse Action                     | Action                       |
|----------------------------------|------------------------------|
| `$mainMod + Left Mouse Button`   | Move window                  |
| `$mainMod + Right Mouse Button`  | Resize window                |
| `$mainMod + Scroll Up`           | Switch to next workspace     |
| `$mainMod + Scroll Down`         | Switch to previous workspace |

### System and Multimedia Keys
#### Volume Control
| Key                        | Action                                |
|----------------------------|---------------------------------------|
| `XF86AudioRaiseVolume`     | Increase volume                      |
| `XF86AudioLowerVolume`     | Decrease volume                      |
| `XF86AudioMute`            | Toggle mute                          |
| `XF86AudioMicMute`         | Toggle microphone mute               |

#### Brightness Control
| Key                        | Action                                |
|----------------------------|---------------------------------------|
| `XF86MonBrightnessUp`      | Increase screen brightness           |
| `XF86MonBrightnessDown`    | Decrease screen brightness           |

#### Media Playback
| Key                        | Action                                |
|----------------------------|---------------------------------------|
| `XF86AudioNext`            | Next track                           |
| `XF86AudioPause`           | Play/pause toggle                    |
| `XF86AudioPlay`            | Play/pause toggle                    |
| `XF86AudioPrev`            | Previous track                       |
| `CTRL + SHIFT + Left`      | Previous track (alternate)           |
| `CTRL + SHIFT + Right`     | Next track (alternate)               |

---

### Usage Notes
- **Configuration File**: Place these keybindings in your Hyprland configuration file to enable the above shortcuts.
- **Customization**: You can further customize paths and commands based on your preferred applications.

For further configuration options and customization, see the [Hyprland documentation](https://wiki.hyprland.org/Configuring/Keywords/).

--- 

Happy window managing!
