cask "glance" do
  version "1.15.0"
  sha256 "11cd2f83d0ce900b1af6c0439b0559c12de280f58041345c115e474280dec10c"

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
