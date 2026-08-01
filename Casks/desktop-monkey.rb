cask "desktop-monkey" do
  version "2.2.0"
  sha256 "03729fab584f3794eb139114d5cced22ab27830def782d13b42b035066fc854e"

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
