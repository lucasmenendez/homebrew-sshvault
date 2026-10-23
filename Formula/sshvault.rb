class Sshvault < Formula
  desc "Local encrypted vault and UI for SSH keys, hosts and files"
  homepage "https://github.com/lucasmenendez/sshvault"
  url "https://github.com/lucasmenendez/sshvault/releases/download/v0.7.4/sshvault-darwin-universal.tar.gz"
  sha256 "1e2b76f9ebcf2171afcf4b5c882cebe83bc1eb3b83ac10cceb07b2b3ead44ad0"
  license "AGPL-3.0-only"

  depends_on :macos

  def install
    bin.install "sshvault"
  end

  test do
    assert_match "sshvault #{version}", shell_output("#{bin}/sshvault --version")
  end
end
