class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.21.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.21.1/artifactize-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "1ce21040cb21aff37080c08f7d97268e8b2e67a935e99b4da479901befde735f"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.21.1/artifactize-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "7a147876cc1f9565e570fbe8c7e6046914b7f7c6f6d4b9d1a9397dde409bd266"
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
