cask "artifactize" do
  version "0.16.1"
  sha256 "c120c5f4b67c126f999d8b714cb5a796bd351fe2aff8214b7e7335ab40ce5c1e"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.16.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
