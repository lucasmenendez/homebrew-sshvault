cask "sshvault-app" do
  version "0.7.7"
  sha256 "c98b8eb701c1af9bb0ea6afefc00365676bc0441d1341e3d6ca05b7c0e945b60"

  url "https://github.com/lucasmenendez/sshvault/releases/download/v#{version}/SSHVault-#{version}.zip"
  name "SSHVault"
  desc "Local encrypted vault and UI for SSH keys, hosts and files"
  homepage "https://github.com/lucasmenendez/sshvault"

  depends_on macos: :monterey

  app "SSHVault.app"

  caveats <<~EOS
    This build is not notarized by Apple. If macOS blocks the first launch,
    open System Settings > Privacy & Security and choose "Open Anyway",
    or Control-click the app in Finder and choose Open.
  EOS
end
