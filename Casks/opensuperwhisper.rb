cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.4"

  on_arm do
    sha256 "c9d0e6a7dad81126f5154a7d5628e3f5fd1e6537e5d7fb113636187e1af2472a"
  end
  on_intel do
    sha256 "f60042ae339495395517e3b469ccba32fdeb92be7362b73974fd3314cc53d569"
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
