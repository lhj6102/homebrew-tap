cask "artifactize" do
  version "0.17.1"
  sha256 "ec8b3fa76b9ef08700373044c05209a632dd69ff44fb2f5e8e9600d0d57e67a4"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.17.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
