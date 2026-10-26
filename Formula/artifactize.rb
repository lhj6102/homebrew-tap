class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.18.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.1/artifactize-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "86442adb5dc6451cfc4623513575bfb6ed431bf553fd73bdb6df521c4614a0a6"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.1/artifactize-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "3ef376ba2782f948f31b4d7ef50dee8b41a8e9367f644679b56eab6c1f6f67af"
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
