cask "glance" do
  version "1.14.0"
  sha256 "c0c942d8316d028ceb315e90f09e25548da0ea2c1463b2fc7b1206d168d1c835"

  url "https://github.com/my-monkeys/glance/releases/download/v#{version}/Glance-#{version}.dmg"
  name "Glance"
  desc "Mobile & desktop client for Umami and Plausible analytics"
  homepage "https://github.com/my-monkeys/glance"

  depends_on macos: :monterey

  app "Glance.app"

  zap trash: [
    "~/Library/Application Support/fr.mymonkey.glance",
    "~/Library/Caches/fr.mymonkey.glance",
    "~/Library/HTTPStorages/fr.mymonkey.glance",
    "~/Library/Preferences/fr.mymonkey.glance.plist",
  ]
end
