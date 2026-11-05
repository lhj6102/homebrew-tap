cask "artifactize" do
  version "0.20.0"
  sha256 "20cf14cc2117e6b7bf761afb436674ab6accbd74e8ddf635dd4cf53da953d41f"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.20.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on :macos

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
