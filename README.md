# Retro Futuristic Linux Desktop

## IMMEDIATE INSTALLATION STEPS!!!

I've additionally included how to install this rice on a new system in my linux ricing guide.
I recommend reading the entire README, but if you're in a hurry, here's the immediate installation steps:

**Assuming you use arch or an arch-based distro such as endeavor or manjaro.**

1. Install the necessary base software and tools by running:
   `sudo pacman -S sway wofi waybar nemo kitty dconf`.
2. Install `eww` through `yay` from the aur, by running `yay eww`.
3. Move all the directories in the `config` directory of this repo, to your user `.config` directory.
4. Start `sway`, either by running `sway` in the terminal (if you have an nvidia gpu, run `sway --unsupported-gpu`), or use a
   login manager like `ly`, I recommend `ly` as it works well and is light.
5. Configure important sway variables, in this case your `Monitor` setup and the `Wallpaper`, please edit the `config` file
   in `.config/sway/config` with your text editor of choice to set it up, I've commented the config file well and so it
   should be easy to know how you can setup your monitors and set the wallpaper.
6. Install the Maple Mono font by copying the font files to your system `/usr/share/fonts` directory, then update the font cache by running `fc-cache -f -v` in the terminal.
7. Configure the GTK theme by copying the `diinki-retro-dark` folder located in the `gtk_theme` directory of this repo, to your `~/.themes` (`username/.themes`) directory.
   Then, set the active GTK theme by running the dconf-editor gui application and then setting the Gnome GTK theme string value to `diinki-retro-dark`.
8. Configure the GTK icon theme by copying the linked theme files to your system `/usr/share/icons` directory, then set the `icon-theme` string to `FairyWren_Dark` (or any other theme that you may desire.)

And that's it, you've now installed this rice from scratch.

### KEY-BINDS:

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

## Project Description

This project revolves around [this](https://diinki.com) video that I made, which is a guide on linux ricing;
in other words a guide on how to make a linux desktop that uses a tiling-window-manager
from scratch, with a design that is retro-futuristic in nature.

I go through how to both make this rice from scratch, as well as how to install it in that video; I
will also briefly describe the steps in this README.

### Toolkit & Software

This rice uses the following tools and softwares:

- `sway` (The window manager)
- `wofi` (Application Launcher)
- `waybar` (Taskbar/Infobar)
- `dconf` (Used to edit gtk themes and cursors, and default softwares used)
- `nemo` (File explorer)
- `kitty` (The terminal Emulator)
- `themix-oomix` (Used to create GTK themes.)
- `network-manager-applet` (Used for tray and other nm things, probably installed with your OS by default.)
- `eww` (Widgets)

In the guide, I installed endeavorOS with Gnome, and showed how to switch from gnome
to sway, in order to boot into sway I decided to show how to use the `ly` login
manager, it's not strictly needed, but for the sake of brevity:

- `ly` Login manager that's used.

On Arch-based Distros such as endeavor, you can install most of these with:
`sudo pacman -S sway wofi waybar dconf nemo kitty network-manager-applet`

However certain softwares such as `eww` and `themix` will have to be installed with the
`yay` package manager, or other means through the arch user repository `aur`.

### Design Language

This linux rice is simple in essence, no massive and complicated config files and designs;
that being said there's quite a lot of thought put into each element in order for them to
follow a **Retro Futuristic design system** that I've made, this includes bespoke wallpapers
that are made to look good with this rice.

Design system descriptions can be found in the `design_system` directory of this repository,
certain details you may find are:

#### Color Palette:

> Core:

- Accent: `#AC82E9`
- Accent Deep: `#8F56E1`
- Dark: `#141216`
- Lighter Dark `#27232b`
- Foreground: `#d8cab8`
- Complementary Accent: `#c4e881`

> Additional:

- Warning: `#fcb167`
- Danger: `#fc4649`
- Yellow: `#f3fc7b`
- Green: `#c4e881`
- Blue: `#7b91fc`
- Cyan: `#92fcfa`
- Magenta: `#fc92fc`

#### Wallpapers:

Wallpapers for this rice can be found in the `wallpapers` directory of this repo.

The wallpapers may be under-saturated , or use completely different yet matching colors
in order to create good background/foreground separation between the UI elements
and the wallpaper.

You may also use `sway-fx` instead of `sway`, which is a fork of `sway` with additional features
such as shadows and rounded edges.

All Wallpapers included in this repo are bespoke for the rice, made by me. Additional elements may
have been cut-out from other artworks and elements, I've included sources to those elements in case
where I've been able to find them.

### Fonts:

A lot of elements use the Maple Mono font in this rice, it's a good font and so I recommend installing it.
You can edit the font by editing the config files.

You can install the font directly from github, I recommend keeping it relatively up-to-date. Move the font
files to your system `/usr/share/fonts` directory, then update the font cache by running `fc-cache -f -v`

### GTK & Icon Theme:

I recommend using the included GTK theme, however for the icon theme you may pick whichever you like, I use
Fairy Wren for this rice.

You move the GTK theme folder to the `~/.themes` directory under your user, whilst the icon theme folder
should be moved to `/usr/share/icons`.

You can set the active theme by using the dconf-editor to set the gnome gtk and icon theme values to
`diinki-retro-dark` and `FairyWren_Dark` respectively.

### License

This project is licensed under the MIT permissive license.
