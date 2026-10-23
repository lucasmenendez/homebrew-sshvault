cask "sshvault-app" do
  version "0.7.5"
  sha256 "dec399c921353dc91620d91bd73088e0ff9cd92458df705132da74515b462bce"

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
