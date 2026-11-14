cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.3"

  on_arm do
    sha256 "fcc3ab84461ed54772db03e3d57b33f899c78d5e239b1f0b9f288eccbc999908"
  end
  on_intel do
    sha256 "b8c6112e63902b5abd1a0578bff628d9441c103504ab18893c301e6eadaccdaa"
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
