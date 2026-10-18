cask "cavlu" do
  version "1.0.6,27"
  sha256 "00eea836379f454db2202f825340521974487dbb814216495244fbf8ac182e5b"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.6-build.27/project-23-1.0.6.zip"
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
