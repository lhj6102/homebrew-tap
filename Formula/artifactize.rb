class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.19.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.19.1/artifactize-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "87bb4213d903313b081d9837c6511739067e88201eee521cc47e280e4738587f"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.19.1/artifactize-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "69e0abe31e911b9d1b07a3686d6b88028f1396cd99a854d3f9135fd4c25abe31"
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
