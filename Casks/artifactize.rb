cask "artifactize" do
  version "0.18.1"
  sha256 "0de0b7436fbe05124fe63eb59e0df751545309b260fb5c23177305b053eeb0a6"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.18.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
