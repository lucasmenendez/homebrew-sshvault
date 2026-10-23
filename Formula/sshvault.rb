class Sshvault < Formula
  desc "Local encrypted vault and UI for SSH keys, hosts and files"
  homepage "https://github.com/lucasmenendez/sshvault"
  url "https://github.com/lucasmenendez/sshvault/releases/download/v0.7.5/sshvault-darwin-universal.tar.gz"
  sha256 "6454322413cbfaf2314a8af85f9043eafe1e9c6200ef3ba41d05a0404c2cd628"
  license "AGPL-3.0-only"

  depends_on :macos

  def install
    bin.install "sshvault"
  end

  test do
    assert_match "sshvault #{version}", shell_output("#{bin}/sshvault --version")
  end
end
