class Sshvault < Formula
  desc "Local encrypted vault and UI for SSH keys, hosts and files"
  homepage "https://github.com/lucasmenendez/sshvault"
  url "https://github.com/lucasmenendez/sshvault/releases/download/v0.7.7/sshvault-darwin-universal.tar.gz"
  sha256 "67cbf50999f223c3a016e786b35b3c105cf5beaf20e2f2c3408c8a5da9ac06f1"
  license "AGPL-3.0-only"

  depends_on :macos

  def install
    bin.install "sshvault"
  end

  test do
    assert_match "sshvault #{version}", shell_output("#{bin}/sshvault --version")
  end
end
