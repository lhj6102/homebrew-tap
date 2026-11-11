class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.21.0/artifactize-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "b8836d1294f4765a798c4cb376149a05e8d970500205febab13dcbc85c556138"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.21.0/artifactize-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "585d8810502c5aa93bbf31217bbfffe7e99d037416829e619bb0f7a0842b4b20"
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
