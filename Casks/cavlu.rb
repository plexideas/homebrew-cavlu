cask "cavlu" do
  version "1.0.8,29"
  sha256 "dccb309c2836256c9b40d562297893796eb8d3ab3592dc0789ec9388d3e67e57"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.8-build.29/Cavlu-1.0.8.zip"
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
