cask "cavlu" do
  version "1.0.3,24"
  sha256 "5b32b25b2698e9b0724502610083538bc81f1e808980d82c24eea581db263803"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.3-build.24/project-23-1.0.3.zip"
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
