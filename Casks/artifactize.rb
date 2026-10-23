cask "artifactize" do
  version "0.15.1"
  sha256 "1e9128bbf5f1790ac667318eece80b4fb4b8be775b9a377d3cdcea1259bef4e3"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.15.1/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize"
  binary "#{appdir}/Artifactize.app/Contents/MacOS/artifactize-tools"
end
