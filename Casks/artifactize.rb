cask "artifactize" do
  version "0.19.1"
  sha256 "cae08d1d0b5f775897691e070b8ec20711d9c67e4f2be83df0076d933c30dff0"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.19.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on :macos

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
