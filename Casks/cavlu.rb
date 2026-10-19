cask "cavlu" do
  version "1.0.9,30"
  sha256 "b2708845ab5d7d3f4ecf51a8603a40a842d940d63c1e5978dba3fda7926db4f1"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.9-build.30/Cavlu-1.0.9.zip"
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
