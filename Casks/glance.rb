cask "glance" do
  version "1.9.1"
  sha256 "32b43335d42f8679a9bea154a15dc0e67cc625c2246503fbff8a00344acdc735"

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
