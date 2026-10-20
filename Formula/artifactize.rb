class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.14.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.14.2/artifactize-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "0369afa5f21af4dd5bc0d7fc1e23872972a84104be2c0c7c9a7de02876001598"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.14.2/artifactize-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "04e0767ee685d9af119afefabb973a6c07dc96c6e8233f39da3611aff6d40092"
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
