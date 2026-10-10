cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.3"

  on_arm do
    sha256 "e3fd61311c3d3ff898b9c5f01eb923af17ac23801cffc413e80d4789364c056f"
  end
  on_intel do
    sha256 "f483d18534c0efc8905fc429cb9a2843f6399799bf1ab2ee4cd4db3975b5ac83"
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
