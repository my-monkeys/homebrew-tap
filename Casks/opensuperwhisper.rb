cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0"

  on_arm do
    sha256 "3e52d40983dcd3c2acc6da2b63ad4a519c93288cae3493c221ea9cfad798d845"
  end
  on_intel do
    sha256 "8e8fbf6d51e50c0b93a8482bd407465aa5afe310a85790861250b1370c7d9145"
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
