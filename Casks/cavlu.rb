cask "cavlu" do
  version "1.0.5,26"
  sha256 "e19ea47e1fdb69c136cc98ea47e92ef6e76d01de38b105102c08d0a203aad14c"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.5-build.26/project-23-1.0.5.zip"
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
