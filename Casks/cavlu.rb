cask "cavlu" do
  version "1.0.11,33"
  sha256 "95f8c844061407a30c0447cba9d1c8d72276b43154a25397c6a9ac66ea600931"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.11-build.33/Cavlu-1.0.11.zip"
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
