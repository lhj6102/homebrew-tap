cask "artifactize" do
  version "0.21.1"
  sha256 "df89fd60e60d75b9a4b24dc72fb734476cc355dccf607268e4f13c54e71ecf3c"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.21.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on :macos

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
