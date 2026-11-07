cask "monkey-battery" do
  version "0.1.1"
  sha256 "1081f025fce1f93df7c8638c53eb695fb6bcb1454caac9d3a9c1a84a95309a02"

  # No `verified:` — Homebrew 6 deprecated it, and the download URL already sits under
  # the homepage host, which is what the default verification checks.
  url "https://github.com/my-monkeys/monkey-battery/releases/download/v#{version}/MonkeyBattery-#{version}.dmg"
  name "Monkey Battery"
  desc "Menu bar countdown to the moment your Mac runs out of battery"
  homepage "https://github.com/my-monkeys/monkey-battery"

  depends_on macos: :sonoma

  app "Monkey Battery.app"

  zap trash: [
    "~/Library/Application Support/fr.mymonkey.monkeybattery",
    "~/Library/Caches/fr.mymonkey.monkeybattery",
    "~/Library/HTTPStorages/fr.mymonkey.monkeybattery",
    "~/Library/Preferences/fr.mymonkey.monkeybattery.plist",
  ]
end
