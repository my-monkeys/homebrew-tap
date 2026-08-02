cask "desktop-monkey" do
  version "2.5.0"
  sha256 "86b115b025957065b509adda7d118267308a79ac4245d869380c9c44c5bfd089"

  url "https://github.com/my-monkeys/desktop-monkey/releases/download/v#{version}/DesktopMonkey-#{version}.dmg",
      verified: "github.com/my-monkeys/desktop-monkey/"
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
