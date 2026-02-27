class Kibitz < Formula
  desc "Real-time decoded feed of AI agent actions"
  homepage "https://kibitz.sh"
  url "https://registry.npmjs.org/@kibitzsh/kibitz/-/kibitz-0.0.3.tgz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "kibitz", shell_output("#{bin}/kibitz --help 2>&1", 1)
  end
end
