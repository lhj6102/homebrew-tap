cask "artifactize" do
  version "0.14.2"
  sha256 "7270e02097ff93d4f1b5bcd670a79a8e54a80c2f18d23ee722e142dfbda9e441"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.14.2/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
