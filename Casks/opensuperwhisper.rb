cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"

  on_arm do
    sha256 "43923dec0f690a5944cb904149682692169b32f71c172aea454d35e8cfe9383a"
  end
  on_intel do
    sha256 "834d113b1d357d822ca8c8ea7b127c10b479074a726fe67a29bea46311354da4"
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
