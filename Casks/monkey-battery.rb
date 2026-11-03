cask "monkey-battery" do
  version "0.1.0"
  sha256 "0e040cc43d70bd38d9d7f705f7a294fae99dda544be2546303b4ce65ce1b6aad"

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
