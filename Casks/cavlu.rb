cask "cavlu" do
  version "1.0.7,28"
  sha256 "80423e2e62fd1be0477fc4d45d6a7d00a778695c3c3197917c596180b09ef9e8"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.7-build.28/project-23-1.0.7.zip"
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
