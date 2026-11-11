cask "artifactize" do
  version "0.21.0"
  sha256 "a055182997d1f049627c76f95101fd5959ab0e06c2ac309382daec678f1cf0bb"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.21.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on :macos

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
