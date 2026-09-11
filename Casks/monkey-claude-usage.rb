cask "monkey-claude-usage" do
  version "0.3.0"
  sha256 "a5bdddff06f6c4da2cde701fa97cd69f4f6c67b0b8961fd4281a5cb6c0aa48cb"

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
