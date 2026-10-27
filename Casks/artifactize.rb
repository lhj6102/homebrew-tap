cask "artifactize" do
  version "0.18.2"
  sha256 "f51be4281e019c8bf6351a5da14a7d0bd0949283e06b0d50bf36ebf6213d0ebb"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.18.2/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
