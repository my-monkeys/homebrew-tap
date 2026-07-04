cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.5"

  on_arm do
    sha256 "6471aa00aa5d4bdca3bb6467b7d7b814c9dae1e0205b64d55fa0119cbccb2129"
  end
  on_intel do
    sha256 "4f53be187a850ef4a35c88e6cce609b4f66d3a6263d29edbf559736b96b66095"
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
