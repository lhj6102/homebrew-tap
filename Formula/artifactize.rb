class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.10.1/artifactize-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "c21cb1c594bf22bd126c31b4474d84be649d3b85b0029d40c82b37101a548cf0"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.10.1/artifactize-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "cad1fd6b9a7c41ea974304df4adfb8dc22e0a795f894b435efbba3d18d2be9d7"
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
