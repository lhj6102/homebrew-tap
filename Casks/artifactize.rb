cask "artifactize" do
  version "0.14.0"
  sha256 "5dfa41094bcfaf3fb0f1828426080179906bbef805a7e11e0d7f710f6c777ef0"

  url "https://github.com/lhj6102/artifactize/releases/download/v0.14.0/artifactize-desktop-v#{version}-universal-apple-darwin.dmg"
  name "Artifactize"
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev/"

  depends_on macos: :big_sur

  app "Artifactize.app"
end
