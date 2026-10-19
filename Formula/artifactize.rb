class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.13.0/artifactize-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "1519ad52846c169416c0e4ce7853f9788aafbba927b9c2c1dc7fb8c2c61c3e8a"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.13.0/artifactize-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "5b72455f3b10f88676f8b33f39d1f59cbb8a4cbdbaff427a1e27060f0f551c2b"
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
