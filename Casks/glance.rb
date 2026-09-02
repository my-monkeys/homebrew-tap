cask "glance" do
  version "1.9.0"
  sha256 "1cb2547f78d875e4dd2c3ef3df3e0c2f48c89f7f830406a7b13c2baaa81f7427"

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
