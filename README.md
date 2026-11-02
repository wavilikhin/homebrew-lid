# Lid for Homebrew

A tiny native macOS menu bar switch to keep your MacBook awake with its lid open or closed, on battery or external power.

## Install

```sh
brew install --cask wavilikhin/lid/lid
open -a Lid
```

Homebrew installs `Lid.app` into `/Applications`. Requires an Apple Silicon Mac and macOS 13 or later, with a working Homebrew installation.

The app is currently ad-hoc signed, **not notarized**. macOS may block the first launch. If that happens, review the app and approve it in **System Settings → Privacy & Security → Open Anyway**. This tap does not disable Gatekeeper or remove quarantine attributes.

## Use

- Switch **on** to disable system sleep, including lid-close sleep.
- Switch **off** to allow normal sleep again.
- Right-click the switch for status, refresh, about, and quit.

macOS requests administrator approval when changing the setting. The display can still turn off. The sleep setting persists after quitting or restarting, and reflects changes made outside the app.

Keep the Mac ventilated while awake. Battery depletion, shutdown, and hardware protection still apply. Lid uses macOS's undocumented `pmset disablesleep` setting; behavior may vary by hardware and OS version.

## Update or remove

```sh
brew update
brew upgrade --cask wavilikhin/lid/lid
```

Turn the switch off before removing Lid if you want to restore normal sleep:

```sh
brew uninstall --cask lid
```

Uninstalling does not change the sleep setting. If you already removed the app, restore normal sleep with `sudo pmset -a disablesleep 0`.

This repository distributes the Homebrew cask and app binaries. The application source is maintained separately in a private repository.
