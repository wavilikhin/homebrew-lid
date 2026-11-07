# Lidless

Keep your Mac awake, even with the lid closed.

A small menu bar app with three switches:

- **Keep awake** — prevent system sleep on battery or external power.
- **Keep display on** — disable the screen saver and display sleep. Turning it off restores your previous timers.
- **Launch at login** — start Lidless when you sign in.

The panel stays the same size when you change a setting. Errors appear as a clickable indicator beside the menu. Sleep-setting details and **Repair Access** are in the menu.

## Install

Requires Apple Silicon and macOS 13 or later.

```sh
brew tap wavilikhin/lid
brew trust --cask wavilikhin/lid/lidless
brew install --cask lidless
open -a Lidless
```

Tap and trust are one-time setup. On Homebrew versions before 7, skip the `brew trust` line.

The setup card replaces the sleep switches until you approve **Set Up Access**. Launch at login remains available. Routine toggles then need no password. After an update, use **Repair Access** if prompted.

The app is not notarized. If macOS blocks the first launch, use **System Settings → Privacy & Security → Open Anyway**.

## Update

```sh
brew update
brew upgrade --cask lidless
```

Previously installed as `lid`? Homebrew migrates that name to `lidless`. If needed, run `brew migrate --cask lid` after updating. On Homebrew 7+, trust the new name with `brew trust --cask wavilikhin/lid/lidless`.

If Homebrew reports that `/Applications/Lidless.app` is missing, recover the installation with `brew reinstall --cask --force lidless`.

## Remove

Turn **Keep awake** and **Keep display on** off first to restore normal sleep and your previous display timers. Quitting the app does not reset them.

```sh
brew uninstall --cask lidless
```

Uninstalling removes the helper and may ask for administrator approval. Keep the Mac ventilated while it is awake.
