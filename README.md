# Homebrew tap for sshvault

## Command-line tool

```bash
brew tap lucasmenendez/sshvault
# Homebrew 7 or newer: trust the third-party tap
brew trust lucasmenendez/sshvault
brew install sshvault
sshvault --ui
```

## macOS app

```bash
brew tap lucasmenendez/sshvault
brew trust lucasmenendez/sshvault
brew install --cask sshvault-app
```

The app is installed in `/Applications` as `SSHVault.app` and includes its own
binary and icon. It is ad-hoc signed and not notarized by Apple. If macOS
blocks the first launch, use **System Settings → Privacy & Security → Open
Anyway**, or Control-click the app and choose **Open**.

The formula and cask are updated automatically from the release workflow in
[lucasmenendez/sshvault](https://github.com/lucasmenendez/sshvault).
