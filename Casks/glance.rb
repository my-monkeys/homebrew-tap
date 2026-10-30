cask "glance" do
  version "1.13.0"
  sha256 "90f8a89593cbaf50d3f4231cc23dbeb382ef150f526845fa948f79a81f61b0c1"

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
