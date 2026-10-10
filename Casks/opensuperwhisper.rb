cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.2"

  on_arm do
    sha256 "463d9d0fbf299e443623d6c75054c6dd41b4e49e72dc0ba1ed399791c445605f"
  end
  on_intel do
    sha256 "3df19e4fafc933561f44829ab477fbba3b71ef0b1e4d084879fa84d689324f0b"
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
