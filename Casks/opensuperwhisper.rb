cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.1"

  on_arm do
    sha256 "f093534b6f1ada2e73aa255d38e1daf439927fe875de4c082b0b26fd9174430d"
  end
  on_intel do
    sha256 "97afb43096e78b96ec5392b4c454b46ce7e4b028ad53623b05530027f093b685"
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
