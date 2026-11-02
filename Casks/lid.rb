cask "lid" do
  version "1.1.0"
  sha256 "5abc977500761c307755b58e0e0fa5de219e0354445bf588e7415245568eb967"

  url "https://github.com/wavilikhin/homebrew-lid/releases/download/v#{version}/Lidless-#{version}-arm64.zip"
  name "Lidless"
  desc "Menu bar switch to keep a MacBook awake with its lid closed"
  homepage "https://github.com/wavilikhin/homebrew-lid"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Lidless.app"

  uninstall launchctl: "dev.vlad.lid.helper",
            quit:      "dev.vlad.lid",
            delete:    [
              "/Library/LaunchDaemons/dev.vlad.lid.helper.plist",
              "/Library/PrivilegedHelperTools/dev.vlad.lid.helper",
            ]

  caveats <<~EOS
    Lidless is not notarized. macOS may require approval in System Settings >
    Privacy & Security before its first launch.

    Turn Lidless off before uninstalling if you want to restore normal sleep.
    Quitting or uninstalling the app does not change the system sleep setting.
  EOS
end
