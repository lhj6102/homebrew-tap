class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.14.0/artifactize-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "cd5a7276a89ac8f692d81136452355a2da60957274bfc0441ab03e1583f54988"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.14.0/artifactize-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "85557db714b0afa455ae0d2cc214c6bcdfc5397ac4f49ebeebe4b88799524aa2"
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
