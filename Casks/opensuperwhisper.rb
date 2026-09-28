cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.7"

  on_arm do
    sha256 "0b8cc238732424bcfb89419fac70d6c3f18248a3003e3502c48cd45d0a31831f"
  end
  on_intel do
    sha256 "34f8130e93521578d3f62b76dd6e27a258b0082306cc71aa3ad11ae38e43a50a"
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
