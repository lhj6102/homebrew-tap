class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.18.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.2/artifactize-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "d6cd89fd8af4b5b744db62f684fe8f8110f8fd7a3c213d5653033d3d37944266"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.18.2/artifactize-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "cbb5163be302c406ec09904a2595560960e495c17fee16e453216ba931a4e94d"
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
