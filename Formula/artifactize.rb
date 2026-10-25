class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.17.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.17.1/artifactize-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "aad28b7688f586c828ad7cec4e7ae357f62a6c470eb51e1a9bd640c166dae133"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.17.1/artifactize-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "8d142f98f48965b8e5ce50919d9d484537864f9bc7b94e433abcbae09a5d2026"
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
