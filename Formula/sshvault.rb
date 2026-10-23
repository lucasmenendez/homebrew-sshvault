class Sshvault < Formula
  desc "Local encrypted vault and UI for SSH keys, hosts and files"
  homepage "https://github.com/lucasmenendez/sshvault"
  version "0.7.3"
  license "AGPL-3.0-only"

  url "https://github.com/lucasmenendez/sshvault/releases/download/v0.7.3/sshvault-darwin-universal.tar.gz"
  sha256 "3cc099d5a245abb838780b45a80cdb4c9a1a8f565434276981dc3dd229773cd6"

  depends_on :macos

  def install
    bin.install "sshvault"
  end

  test do
    assert_match "sshvault #{version}", shell_output("#{bin}/sshvault --version")
  end
end
