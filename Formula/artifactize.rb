class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.13.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.13.1/artifactize-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "03f9bb49474fa470fd3d10885c735fac1233b769b27bb89e3f522acf1d700bbb"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.13.1/artifactize-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "1e0c0019da7bbad7f5f82b330ac49404cf282da58b059403daecadd08eaf7be2"
    end
  end

  def install
    bin.install "artifactize", "artifactize-tools"
  end

  test do
    assert_equal "artifactize #{version}", shell_output("#{bin}/artifactize --version").strip
    assert_equal "artifactize-tools #{version}", shell_output("#{bin}/artifactize-tools --version").strip
    (testpath/"sample.txt").write("artifactize packaging test\n")
    assert_match "artifactize packaging test", shell_output("#{bin}/artifactize-tools read sample.txt")
  end
end
