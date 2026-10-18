cask "cavlu" do
  version "1.0.2,23"
  sha256 "c30be39ea248324abdd37009975fa7acf1a72c14b4217979136e1fb6327d6714"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.2-build.23/project-23-1.0.2.zip"
  name "Cavlu"
  desc "Local Russian and English keyboard layout correction"
  homepage "https://github.com/plexideas/cavlu-releases"

  auto_updates true
  depends_on macos: :sonoma

  app "project-23.app", target: "Cavlu.app"

  zap trash: "~/Library/Application Support/project-23"

  caveats <<~EOS
    For non-notarized builds, macOS may require Open Anyway in Privacy & Security.
    Enable Accessibility and Input Monitoring for Cavlu in System Settings.
    Quit the app and disable launch at login before uninstalling it.
  EOS
end
