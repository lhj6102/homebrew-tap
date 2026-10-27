cask "artifactize" do
  version "0.18.3"
  sha256 "42ae68912e679d10e88597e33c49358858af224f2d1304f8d71edeea1728a534"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.18.3/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
