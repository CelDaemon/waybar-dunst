# waybar-dunst

This project is a module for waybar with integration for dunst, adding a status icon when notifications are paused.

> [!NOTE]
> More features may be added later, such as custom configuration and displaying additional information.

# Installation

## Package

> [!IMPORTANT]
> Always ensure the `PKGBUILD` and any other files used during the packaging and/or install process are trusted and safe.
>
> Furthermore, this project has no build step, hence no `-bin` package will be made available.
> If an AUR package with the name `waybar-dunst-bin` is created, it is not official and should likely not be trusted.

For installation using a package manager on Arch, an [AUR package](https://aur.archlinux.org/packages/waybar-dunst) is available.

To install it, simply use your AUR helper of choice, for example with `yay`:

```sh
yay -S waybar-dunst
```

Then, follow the printed instructions to setup your configuration.

> [!NOTE]
> While no packages for other distributions are currently available, these may be created upon user request.
> Any requested distribution must have some form of the `python-dbus-fast` package available through the primary package manager.


## Manual

For manual installation, simply run the `install.sh` script in the root of the repository.

Secondly, add the following to your waybar configuration:

```jsonc
"custom/dunst": {
    "return-type": "json",
    // Change /usr/local to /usr when installed with a package manager
    "exec": "/usr/local/lib/waybar-dunst/waybar-dunst",
    "on-click": "dunstctl set-paused toggle"
}
```

Finally, add `custom/dunst` to your module array of choice.

