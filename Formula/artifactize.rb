class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.22.0/artifactize-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "f2efe72a26610a2939f82fa3a4c16fbb0e1eddc7ce8c5804e095ce39067ea652"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.22.0/artifactize-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "8bff53ae76a37abd863bb842f6cd9c838002606f3f558a87436a583a41d869a5"
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
