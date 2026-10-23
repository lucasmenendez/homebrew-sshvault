cask "sshvault-app" do
  version "0.7.6"
  sha256 "a7719a067ab434a730edf2ddcb3c4248f3a6ad7df930cae42e041575bbcbc3d4"

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
