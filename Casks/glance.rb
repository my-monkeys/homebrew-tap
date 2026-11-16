cask "glance" do
  version "1.16.0"
  sha256 "0970bba9f80118d60d0c2bd8c9f7b73afc3399055ec6d6444347e15d8fdb9070"

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
