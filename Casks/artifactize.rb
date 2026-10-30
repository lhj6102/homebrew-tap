cask "artifactize" do
  version "0.19.0"
  sha256 "7f5064eeab9e660ff60322e4c31014e5aede977df169ee91c4c6516e2f2cf1ec"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.19.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on :macos

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
