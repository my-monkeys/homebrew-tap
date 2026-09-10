cask "monkey-claude-usage" do
  version "0.2.1"
  sha256 "2abe813ac64c3fd702e3a5d351a8392ba39bf421b6c012c847715d08bf527b4c"

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
