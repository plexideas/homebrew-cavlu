cask "cavlu" do
  version "1.0.1,22"
  sha256 "b63c121b7281bd02e2f680e2c5f151ce9a971e55ec56c104eb62b39814b8361f"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.1-build.22/project-23-1.0.1.zip"
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
