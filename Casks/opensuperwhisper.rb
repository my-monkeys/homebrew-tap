cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.9"

  on_arm do
    sha256 "f301d489766c155c47a78402d5d99999a266366ce8b63147820bb593742a2918"
  end
  on_intel do
    sha256 "9a475a1d0f07cd8b29e4d9a2bb9863d9fe32d30b204fb9e84361446a5eff0f92"
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
