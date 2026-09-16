cask "glance" do
  version "1.10.0"
  sha256 "76c9423847805085b1de96656103848d9a359601054362c61c2db8153ed8eb7c"

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
