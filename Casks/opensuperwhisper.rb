cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.5"

  on_arm do
    sha256 "dade5a7aebe6410fc569ffb97620a51de94402417c6b030e91d4436cc210cfce"
  end
  on_intel do
    sha256 "f5d9fc584271020fa4909a80211cfb65a3d055882bce5fe12759e05526b45234"
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
