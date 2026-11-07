cask "monkey-battery" do
  version "0.2.0"
  sha256 "a3e65b15880ff55a946d3530caa08400f470184a5da3c16ef736195a4e3d9d24"

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
