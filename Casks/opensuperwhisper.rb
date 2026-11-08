cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.1"

  on_arm do
    sha256 "0c98b9be53d848300653fafa0cd6db601a66e7ba467d09715f21686222949a82"
  end
  on_intel do
    sha256 "d7c2113ed7b0e2cb162e8cc3ca27d854767e9a3a51c70ded02681d1ef2c190f7"
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
