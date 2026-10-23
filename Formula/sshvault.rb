class Sshvault < Formula
  desc "Local encrypted vault and UI for SSH keys, hosts and files"
  homepage "https://github.com/lucasmenendez/sshvault"
  url "https://github.com/lucasmenendez/sshvault/releases/download/v0.7.6/sshvault-darwin-universal.tar.gz"
  sha256 "a0b8a6e7f0e5fbdcfd941c1ef76420e0f1d1088d645d2e13715721c770570c7c"
  license "AGPL-3.0-only"

  depends_on :macos

  def install
    bin.install "sshvault"
  end

  test do
    assert_match "sshvault #{version}", shell_output("#{bin}/sshvault --version")
  end
end
