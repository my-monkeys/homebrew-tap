cask "desktop-monkey" do
  version "2.6.0"
  sha256 "258282bc24a25a2f0ea3b9b4edf34fe39ad40000060f7a0bd12c0c4d69991f88"

  # No `verified:` — Homebrew 6 deprecated it, and the download URL already sits under
  # the homepage host, which is what the default verification checks.
  url "https://github.com/my-monkeys/desktop-monkey/releases/download/v#{version}/DesktopMonkey-#{version}.dmg"
  name "Desktop Monkey"
  desc "Tiny pixel-art monkey that lives on your desktop"
  homepage "https://github.com/my-monkeys/desktop-monkey"

  depends_on macos: :big_sur

  app "Desktop Monkey.app"

  zap trash: [
    "~/Library/Application Support/SingeDeBureau",
    "~/Library/LaunchAgents/SingeDeBureau.plist",
  ]
end
