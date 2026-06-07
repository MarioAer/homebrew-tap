class Sancho < Formula
  desc "CLI for delegating coding tasks to LLMs"
  homepage "https://github.com/marioaer/sancho"
  url "https://github.com/marioaer/sancho/releases/download/v0.0.1/sancho_0.0.1_linux_amd64.tar.gz"
  version "0.0.1"
  sha256 "<calculated-sha256>"
  license "MIT"

  depends_on "tar" => :build

  def install
    bin.install "sancho"
  end

  test do
    assert_match "Delegate coding tasks to LLMs", shell_output("#{bin}/sancho --help")
  end
end
