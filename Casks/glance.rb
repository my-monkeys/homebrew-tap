cask "glance" do
  version "1.7.0"
  sha256 "4867a63d0b2b4756cfd1282048a529505e5af9025e12164dd5ac12385815adce"

  url "https://github.com/my-monkeys/glance/releases/download/v#{version}/Glance-#{version}.dmg",
      verified: "github.com/my-monkeys/glance/"
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
