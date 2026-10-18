cask "cavlu" do
  version "1.0.4,25"
  sha256 "b17db3ae45b27ae01fd280ab84f2c8c4657b489b6bacc789ae6b826a2a8ab2d4"

  url "https://github.com/plexideas/cavlu-releases/releases/download/v1.0.4-build.25/project-23-1.0.4.zip"
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
