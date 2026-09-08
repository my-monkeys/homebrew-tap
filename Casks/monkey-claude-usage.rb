cask "monkey-claude-usage" do
  version "0.1.0"
  sha256 "f4721cc60b30d757a7f3dcd8ddeaa2104e0df79bee90474fa8617ce80a9b8927"

  url "https://github.com/my-monkeys/monkey-claude-usage/releases/download/v#{version}/MonkeyClaudeUsage-#{version}.dmg",
      verified: "github.com/my-monkeys/monkey-claude-usage/"
  name "Monkey Claude Usage"
  desc "Menu bar tracker for Claude usage limits across several accounts"
  homepage "https://github.com/my-monkeys/monkey-claude-usage"

  depends_on macos: :sonoma

  app "Monkey Claude Usage.app"

  zap trash: [
    "~/Library/Application Support/fr.mymonkey.monkeyclaudeusage",
    "~/Library/Caches/fr.mymonkey.monkeyclaudeusage",
    "~/Library/HTTPStorages/fr.mymonkey.monkeyclaudeusage",
    "~/Library/Preferences/fr.mymonkey.monkeyclaudeusage.plist",
  ]
end
