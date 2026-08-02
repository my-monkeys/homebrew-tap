cask "desktop-monkey" do
  version "2.4.0"
  sha256 "b7916855b5143a2128fdb0a96001bd8b654b9ecf26aa9c744888d5e85bcefb3f"

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
