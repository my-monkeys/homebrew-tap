cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.1"

  on_arm do
    sha256 "d0913031f247e10a5acb0aca7540e3963b3ae4e13127ae40d310eb03bf13f98d"
  end
  on_intel do
    sha256 "e23facf4d62cea1513e0084018e6913295f0fa3471fb1b646028a5cb81627764"
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
