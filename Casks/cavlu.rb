cask "cavlu" do
  version "1.0.12,34"
  sha256 "373ef7a4ada5cae05034c87dbe27c0efbae4e08e5eee0ea91923d869de32f307"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.12-build.34/Cavlu-1.0.12.zip"
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
