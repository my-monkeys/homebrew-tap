cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.5.1"

  on_arm do
    sha256 "ef13ae90c70e1229fcb98bf948b54538abc3879346c27c61b47e01f6626bf5cd"
  end
  on_intel do
    sha256 "70b6f28c0e5ec58ad9932a12ad2d609b89ed154437da62613d21013171a7e073"
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
