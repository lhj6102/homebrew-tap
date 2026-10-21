class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.15.0/artifactize-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ef051366b8b5b385989acbd21548de7bedb88201890ba7b060c27edbcf825bf"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.15.0/artifactize-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "247e79a7e41288bd79fa7401a9ae74646dbeaee8e7fd896308a3c53232b2c3a7"
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
