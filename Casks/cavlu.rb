cask "cavlu" do
  version "1.0.9,31"
  sha256 "813f05e33495cfe6675933eb9ba0421e893b9597eecfc2ac667fb882a797f219"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.9-build.31/Cavlu-1.0.9.zip"
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
