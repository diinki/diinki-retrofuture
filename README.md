# Retro-Futuristic Linux Rice

diinki-retrofuture is a retro-futuristic linux rice that revolves around [this](https://diinki.com) youtube
video that I've made; where I teach you how to make this exact rice from scratch. Of course, the github version
has cleaner config files and more comments, so I highly recommend reading the configs and code, and also customizing them as you see fit

This project also includes a GTK3/4 theme which I highly recommend, it makes nemo/nautilus/etc look good with the
rice!

## 📌 Installation Steps

Feel free to watch [this part of my video](https://diinki.com), where I skim over how to install this rice;
especially useful if you have ADHD or hate reading...

**I'm assuming you use arch or an arch-based, but the steps would be extremely similar regardless.**

1. Install the necessary base software and tools by running:
   `sudo pacman -S sway wofi waybar nemo nautilus kitty dconf`. in your terminal.
2. Install `eww` with `yay` from the AUR by running `yay eww`. eww is only necessary if you want widgets, can skip otherwise.
3. Move all the folders in the `config` directory of this repo to your user `.config` directory (`~/.config`), make sure to back-up
   old config files if you have any.
4. Reboot and start sway by running `sway` in the terminal, or refresh your current sway instance. If you have an nvidia gpu, you'll need to run `sway --unsupported-gpu`. If you want
   a login manager, I recommend using `ly`, other login-managers tend to not work well with sway.
5. Configure important sway variables, in this case your `Monitors` and the `Wallpaper`, please edit the `config` file
   in `.config/sway/config` with your text editor of choice to set it up, I've commented the config file well and so it
   should be easy to know how you can setup your monitors and set the wallpaper.
6. Install the Maple Mono font by copying the font files to your system `/usr/share/fonts` directory, then update the font cache by running `fc-cache -f -v` in the terminal.
7. Configure the GTK theme by copying the `diinki-retro-dark` folder located in the `gtk_theme` directory of this repo, to your `~/.themes` (`username/.themes`) directory.
   Then, set the active GTK theme by running the dconf-editor gui application and then setting the Gnome GTK theme string value to `diinki-retro-dark`.
8. Configure the GTK icon theme by copying the linked theme files to your system `/usr/share/icons` directory, then set the `icon-theme` string to `FairyWren_Dark` (or any other theme that you may desire.)

And that's it, you've now installed this rice from scratch

1. `Installation`
   - Run `sudo pacman -S sway wofi waybar nemo nautilus kitty dconf` in your terminal.
   - Run `yay eww` in your terminal (if you also want widgets) (you may need to install yay).
   - Install the Maple Mono font, as this font is used a lot in this Linux rice. Move the font-file to `/usr/share/fonts`, then run `fc-cache -f -v` to update all font
   - Run `git clone https://github.com/diinki/diinki-retrofuture` to clone this repo
2. `Config Setup`
   - Copy all folders in the `diinki-retrofuture/config` directory to your local user `.config` directory
     (`~/.config`).
   - Copy the `diinki-retro-dark` folder in `diinki-retrofuture/gtk_theme` to your local user `.themes` directory (`~/.themes`), you may need to create this directory manually if you don't already have it.
   - Use a text editor to edit the sway config-file in `~/.config/sway/config`. You need to edit the config
     to setup your wallpaper and monitor settings. I've commented the file with the steps.
   - Enter `dconf-editor` in your terminal to open up the dconf gui program, use this to set the GTK theme
     to `diinki-retro-dark`, you may also use dconf to set your icon theme and cursor theme.
3. `Creative Liberty`
   - I have commented all config files in a concise and descriptive manner, I recommend reading them and
     editing them as you see fit; you may want to add or change things, such as the keybinds for sway, or
     the fonts used.
   - Feel free to continue reading this document for more details on the design & softwares used.

### ⌨️ Key-binds

All key-binds can be find in the sway config file, simply refer to those and edit them if you'd like.

The most important default key-binds are:

- `mod` = the super key, (the windows key, as some people refer to it as). You can re-bind mod to something else if you wish.

- `mod` + `Enter` = launch terminal.
- `mod` + `D` = launch application launcher.
- `mod` + `[any number, 1-9]` = switch focus to the workspace equivalent to the number.
- `mod` + `Shift` + ` [any number, 1-9]` = move the focused window to the workspace equivalent to the number.
- `mod` + `Shift` + ` Space` = toggle floating mode for the focused window.
- `mod` + ` Q` = Exit/Kill the focused window.
- `mod` + `F` = toggle full-screen mode for the focused window.
- `mod` + `Right Mouse Button` = re-size a window
- `mod` + `Left Mouse Button` = move a window

---

### 💾 Toolkit & Software

This rice uses the following tools and softwares:

- `sway` (The window manager)
- `wofi` (Application Launcher)
- `waybar` (Taskbar/Infobar)
- `dconf` (Used to edit gtk themes and cursors, and default softwares used)
- `nemo` or `nautilus` (File explorer).
- `kitty` (The terminal Emulator)
- `themix-oomix` (Used to create the non GTK4 themes.)
- `network-manager-applet` (Used for tray and other nm things, probably installed with your OS by default.)
- `eww` (Widgets)

In the guide, I installed endeavorOS with Gnome, and showed how to switch from gnome
to sway, in order to boot into sway I decided to show how to use the `ly` login
manager, it's not strictly needed, but for the sake of brevity:

- `ly` Login manager that's used.

### 🖌️ Design Language

This Linux-Rice is simple in essence, no massive and complicated config files and designs;
that being said there's quite a lot of thought put into each element in order for them to
follow a **Retro Futuristic design system** that I've made, this includes bespoke wallpapers
that are made to look good with this rice.

Design system descriptions can be found in the `design_system` directory of this repository.

#### 🎨 Color Palette

The main color palette used widely for this rice in both the GTK themes and other components are:

`Core:`

- Accent: `#AC82E9`
- Accent Deep: `#8F56E1`
- Dark: `#141216`
- Lighter Dark `#27232b`
- Foreground: `#d8cab8`
- Complementary Accent: `#c4e881`

`Additional:`

- Warning: `#fcb167`
- Danger: `#fc4649`
- Yellow: `#f3fc7b`
- Green: `#c4e881`
- Blue: `#7b91fc`
- Cyan: `#92fcfa`
- Magenta: `#fc92fc`

#### 🌆 Wallpapers:

Wallpapers for this rice can be found in the `wallpapers` directory of this repo.

The wallpapers may be under-saturated , or use completely different yet matching colors
in order to create good background/foreground separation between the UI elements
and the wallpaper.

You may also use `sway-fx` instead of `sway`, which is a fork of `sway` with additional features
such as shadows, rounded edges, and blur.

All Wallpapers included in this repo are bespoke for the rice, made by me. Additional elements may
have been cut-out from other artworks and elements, I've included sources to those elements in case
where I've been able to find them.

### 🖋️ Fonts:

A lot of elements use the Maple Mono font in this rice, it's a good font and so I recommend installing it.
You can edit the font by editing the config files.

You can install the font directly from github, I recommend keeping it relatively up-to-date. Move the font
files to your system `/usr/share/fonts` directory, then update the font cache by running `fc-cache -f -v`

### GTK & Icon Theme:

I recommend using the included GTK theme, however for the icon theme you may pick whichever you like.

### 📜 License

This project is licensed under the MIT permissive license.
