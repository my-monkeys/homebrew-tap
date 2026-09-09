cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.3"

  on_arm do
    sha256 "01275cba037394e28f7ac0d9a3492cdd8d432ef4da7d414bb11a4024e98c2ba3"
  end
  on_intel do
    sha256 "b1891a0f915d7c8b0005d9643c925649dbb5dd52d10aacd0955305ef265de5b3"
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
