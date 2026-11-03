cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.0"

  on_arm do
    sha256 "b2eebf096e899486f4d5f0b158ea080e2f97240248f18c60f38e1b91a736d6ac"
  end
  on_intel do
    sha256 "1952bf6c32f7fd9b2d2d18c682e62bd21f92c298fb789e09b9a037aa6e1cb9e9"
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
