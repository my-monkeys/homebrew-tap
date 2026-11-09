cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.2"

  on_arm do
    sha256 "a28f2a7db7b983f612f5f272f1e6c13b96e226bced1c7923e579b9407c9a316f"
  end
  on_intel do
    sha256 "23e664b8effe22e4654dccf1a11d0cd9f135db5b078ca4219718cc1bd7f56374"
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
