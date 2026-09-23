cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.6"

  on_arm do
    sha256 "0e88e5f0375ae273ab53ba98eb69691906d680c55f3a457eff903f17880442ad"
  end
  on_intel do
    sha256 "1dfd7532ecc94e908b908527a981354afcb832a16eac83dea534ec793b9c7951"
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
