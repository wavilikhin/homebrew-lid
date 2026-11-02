cask "lid" do
  version "1.0.0"
  sha256 "c96bddbd56772c30b9f05f5c0677aa625ccc134a302526e5132abcc8ec828bd8"

  url "https://github.com/wavilikhin/homebrew-lid/releases/download/v#{version}/Lid-#{version}-arm64.zip"
  name "Lid"
  desc "Menu bar switch to keep a MacBook awake with its lid closed"
  homepage "https://github.com/wavilikhin/homebrew-lid"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Lid.app"

  uninstall quit: "dev.vlad.lid"

  caveats <<~EOS
    Lid is not notarized. macOS may require approval in System Settings >
    Privacy & Security before its first launch.

    Turn Lid off before uninstalling if you want to restore normal sleep.
    Quitting or uninstalling the app does not change the system sleep setting.
  EOS
end
