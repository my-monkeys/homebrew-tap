cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"

  on_arm do
    sha256 "5c9c8df561341a2cbbc37a12263e2333a05e6d370b48c491c1b5c6a2e5e6496f"
  end
  on_intel do
    sha256 "5ba69a66fdf1dc81c50d7e83fd430602c66c38b9b150eaa03de35f7e72715daf"
  end

  url "https://github.com/my-monkeys/OpenSuperWhisper/releases/download/v#{version}/OpenSuperWhisper-#{arch}-#{version}.dmg",
      verified: "github.com/my-monkeys/OpenSuperWhisper/"
  name "OpenSuperWhisper"
  desc "macOS dictation with local Whisper/Parakeet transcription"
  homepage "https://github.com/my-monkeys/OpenSuperWhisper"

  depends_on macos: :sonoma

  app "OpenSuperWhisper.app"

  zap trash: [
    "~/Library/Application Support/fr.my-monkey.opensuperwhisper",
    "~/Library/Preferences/fr.my-monkey.opensuperwhisper.plist",
    "~/Library/Caches/fr.my-monkey.opensuperwhisper",
    "~/Library/Application Support/FluidAudio",
  ]
end
