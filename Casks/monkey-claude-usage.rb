cask "monkey-claude-usage" do
  version "0.2.0"
  sha256 "64a35b7d940e4a3541aca85a4bf68ee46c6524c1a769001de1cd2d47ec9c7a3a"

  # No `verified:` — Homebrew 6 deprecated it, and the download URL already sits under
  # the homepage host, which is what the default verification checks.
  url "https://github.com/my-monkeys/monkey-claude-usage/releases/download/v#{version}/MonkeyClaudeUsage-#{version}.dmg"
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
