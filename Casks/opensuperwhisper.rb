cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.2"

  on_arm do
    sha256 "18fa6c5e33d185666721c9d61e61933b4a09166c61169b3867c94ab70c36b431"
  end
  on_intel do
    sha256 "931fef3641bc940c9ecc74740da12dc94c9177d1d18a4df1c9b749dfd404752f"
  end

  url "https://github.com/my-monkeys/OpenSuperWhisper/releases/download/v#{version}/OpenSuperWhisper-#{arch}-#{version}.dmg",
      verified: "github.com/my-monkeys/OpenSuperWhisper/"
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
