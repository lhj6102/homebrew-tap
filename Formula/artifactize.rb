class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.19.0/artifactize-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "47c49fddc985303385d261f00684f46b288f0ec6abd18fa6dd21a2deef00ef8e"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.19.0/artifactize-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "519b48931b7031eb4e92fefce698de5aa8b294208a8abe1908133cf3fe27ab89"
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
