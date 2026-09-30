cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.8"

  on_arm do
    sha256 "a04da57e7f47ee3b3db7a5ebe5c8462675990ac48ae758ba3c98649a1b8bd683"
  end
  on_intel do
    sha256 "7a62d3b61c86512aa208b226f1d4da6ca8121efc3f42b435e42ef083ac665f1f"
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
