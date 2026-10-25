cask "artifactize" do
  version "0.18.0"
  sha256 "c206d6060428c74d30762e23ce287a9c35519c2bdc548923ae38f16df5a80e03"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.18.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
