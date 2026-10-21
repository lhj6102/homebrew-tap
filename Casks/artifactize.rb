cask "artifactize" do
  version "0.15.0"
  sha256 "06d8ae27facbc5404cac6ff255ba355693fb08127a2a9fc63f0d9898f8460926"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.15.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
