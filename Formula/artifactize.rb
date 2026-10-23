class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.15.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.15.1/artifactize-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "080c78cc88d1765dec9b1103428c1a108373c10dc53e203999e198082e382bb5"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.15.1/artifactize-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "b7e7b380ae80a4eec63ea0aaddfb6496ca2ff709e9bc8d2028f8caf23e45be65"
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
