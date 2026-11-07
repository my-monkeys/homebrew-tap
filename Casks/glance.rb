cask "glance" do
  version "1.15.2"
  sha256 "91dbd7d0be6928cf9c71b9ed8298169782e3542ec971568da82b906aea469cc1"

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
