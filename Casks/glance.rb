cask "glance" do
  version "1.11.1"
  sha256 "d50a995117dc711d4781ae390a46dd4d4572c29b2963d7335985069dc62b63ce"

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
