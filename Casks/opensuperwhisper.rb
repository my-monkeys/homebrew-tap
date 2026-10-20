cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.3"

  on_arm do
    sha256 "68b7e7945c53fb9d9938f30b5f9107c549a75a6339fb1423de8812eedebde35c"
  end
  on_intel do
    sha256 "36afeae48c10fc70d31dbbf4726ed3524b64dbed5729a3969562b5e5f0b89978"
  end

  url "https://github.com/my-monkeys/OpenSuperWhisper/releases/download/v#{version}/OpenSuperWhisper-#{arch}-#{version}.dmg"
  name "OpenSuperWhisper"
  desc "macOS dictation with local Whisper/Parakeet transcription"
  homepage "https://github.com/my-monkeys/OpenSuperWhisper"

  depends_on macos: :sonoma

  app "OpenSuperWhisper.app"
  binary "#{appdir}/OpenSuperWhisper.app/Contents/MacOS/OpenSuperWhisper", target: "opensuperwhisper"

  zap trash: [
    "~/Library/Application Support/fr.my-monkey.opensuperwhisper",
    "~/Library/Preferences/fr.my-monkey.opensuperwhisper.plist",
    "~/Library/Caches/fr.my-monkey.opensuperwhisper",
    "~/Library/Application Support/FluidAudio",
  ]
end
