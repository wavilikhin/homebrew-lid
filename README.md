# Lidless for Homebrew

A native macOS menu bar app to keep your MacBook awake with its lid open or closed, on battery or external power.

Previously named **Lid**. The Homebrew command remains the same. Version 1.1.0 installs `Lidless.app`; upgrading replaces the old `Lid.app`.

## Install

```sh
brew install --cask wavilikhin/lid/lid
open -a Lidless
```

Homebrew installs `Lidless.app` into `/Applications`. Requires an Apple Silicon Mac and macOS 13 or later, with a working Homebrew installation.

The app is currently ad-hoc signed, **not notarized**. macOS may block the first launch. If that happens, review the app and approve it in **System Settings → Privacy & Security → Open Anyway**. This tap does not disable Gatekeeper or remove quarantine attributes.

## Use

- Switch **on** to disable system sleep, including lid-close sleep.
- Switch **off** to allow normal sleep again.
- Click the menu bar laptop to open the panel; the dot means Keep awake is on.
- Approve **Set Up Access** once to install the helper. Routine toggles then need no password.
- Open the gear menu to refresh status, repair access, or remove the helper.

App updates may require approving helper access again. The display can still turn off. The sleep setting persists after quitting or restarting, and reflects changes made outside the app.

Keep the Mac ventilated while awake. Battery depletion, shutdown, and hardware protection still apply. Lidless uses macOS's undocumented `pmset disablesleep` setting; behavior may vary by hardware and OS version.

## Update or remove

```sh
brew update
brew upgrade --cask wavilikhin/lid/lid
```

Turn the switch off before removing Lidless if you want to restore normal sleep:

```sh
brew uninstall --cask lid
```

Uninstalling removes the helper and may request administrator approval. It does not change the sleep setting. If you already removed the app, restore normal sleep with `sudo pmset -a disablesleep 0`.

This repository distributes the Homebrew cask and app binaries. The application source is maintained separately in a private repository.
