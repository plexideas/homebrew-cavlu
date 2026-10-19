cask "cavlu" do
  version "1.0.10,32"
  sha256 "3468216c0528e60eb7f569f373d59b173463613f37e3c0e6b158befc99340893"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.10-build.32/Cavlu-1.0.10.zip"
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
