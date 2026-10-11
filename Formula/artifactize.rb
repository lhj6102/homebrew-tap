class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.10.0/artifactize-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "abf40caecc499cb531684007c81a9d12af6b0ff54e96170df298cd89f541fdc2"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.10.0/artifactize-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "7564d6280de2880db4cf7f1e06d95a5bc3410bef836ab45a432edd41048e4b08"
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
