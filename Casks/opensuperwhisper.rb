cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.4"

  on_arm do
    sha256 "aba1d8b054e0a1a6abd87477572f088944f630edbfe4c2bc8058d72d6ee91f4a"
  end
  on_intel do
    sha256 "2d15a2488da2971684781f403ac2ab786605218e48a0f99c0304cd3ec55f7a3b"
  end

  url "https://github.com/my-monkeys/OpenSuperWhisper/releases/download/v#{version}/OpenSuperWhisper-#{arch}-#{version}.dmg"
  name "OpenSuperWhisper"
  desc "macOS dictation with local Whisper/Parakeet transcription"
  homepage "https://github.com/my-monkeys/OpenSuperWhisper"

  deprecate! date: "2026-11-16", because: "was renamed", replacement_cask: "my-monkeys/tap/openmonkeywhisper"

  conflicts_with cask: "openmonkeywhisper"
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
