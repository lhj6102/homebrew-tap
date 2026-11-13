cask "artifactize" do
  version "0.22.0"
  sha256 "370f92ef3be40d86efb6a51cb0dd211425099e9afdbe825895bd47bf5932e48e"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.22.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on :macos

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
