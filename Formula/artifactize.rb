class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.20.0/artifactize-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "e4bd089ce38f834dc65d7589bfcc311e8ed220518311b9d74bf2a88667304b9b"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.20.0/artifactize-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "05a7734927ca8ac2a3f3ac55210a4683896fffdcd1bfb8b511ab7908cd7f50ed"
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
