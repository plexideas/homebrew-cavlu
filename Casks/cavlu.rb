cask "cavlu" do
  version "1.0.13,35"
  sha256 "5ebd4db44d012ab6613d671a272025060a1f5a821b9b0cd9a1a183752a5ec197"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.13-build.35/Cavlu-1.0.13.zip"
  name "Cavlu"
  desc "Local Russian and English keyboard layout correction"
  homepage "https://github.com/plexideas/cavlu-releases"

  auto_updates true
  depends_on macos: :sonoma

  app "Cavlu.app"

  zap trash: "~/Library/Application Support/project-23"

  caveats <<~EOS
    For non-notarized builds, macOS may require Open Anyway in Privacy & Security.
    Enable Accessibility and Input Monitoring for Cavlu in System Settings.
    Quit the app and disable launch at login before uninstalling it.
  EOS
end
