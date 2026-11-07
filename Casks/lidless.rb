cask "lidless" do
  version "1.2.2"
  sha256 "8a82eef28c898c4ab3bc9754b241b9542616cf4a061008e46e0308c216dab739"

  url "https://github.com/wavilikhin/homebrew-lid/releases/download/v#{version}/Lidless-#{version}-arm64.zip"
  name "Lidless"
  desc "Keep your Mac awake, even with the lid closed"
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

    Turn off Keep awake and Keep display on before uninstalling to restore
    normal sleep and your saved display timers. Quitting does not restore them.
  EOS
end
