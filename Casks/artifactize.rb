cask "artifactize" do
  version "0.14.1"
  sha256 "e379589de2717e10c0ffc742e868da071923555bc181cd33b5bb89c411146a16"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.14.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
