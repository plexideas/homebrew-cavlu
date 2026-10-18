cask "cavlu" do
  version "1.0.0,21"
  sha256 "31af8802240cf4a657514c070690a8a1b96028ee6f47be01b7bf0d246c2c7c40"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.0-build.21/project-23-1.0.0.zip"
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
