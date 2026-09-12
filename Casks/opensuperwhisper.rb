cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.4"

  on_arm do
    sha256 "aecd75ff37fb215d0a0ba4075fd12e51577148dd2c47f9408a8ad7cdc64bd3b5"
  end
  on_intel do
    sha256 "d7b485ed9157d2eb184272354fcb227343557d17735d38a844f63fd71cfb6cb9"
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
