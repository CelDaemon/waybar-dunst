# waybar-dunst

This project is a module for waybar with integration for dunst, adding a status icon when notifications are paused.

> [!NOTE]
> More features may be added later, such as custom configuration and displaying additional information.

# Installation

For installation, simply run the `install.sh` script in the root of the repository.

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

