class Artifactize < Formula
  desc "Declare and verify artifacts with reusable evidence"
  homepage "https://artifactize.dev"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.12.0/artifactize-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "b33034c2bade92b323118e76dbe32177d8343bfd073f1adda5c1dca95aeafd97"
    end
    on_intel do
      url "https://github.com/lhj6102/artifactize/releases/download/v0.12.0/artifactize-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "40326e71ef9c625c396836ff604550424debbc6971bfa4056599bccd72df8630"
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
