cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.2"

  on_arm do
    sha256 "7a59be5ddc14796a7636d9ad79e6c818fd674a16fa4cbfbe10efa6474100f5cf"
  end
  on_intel do
    sha256 "7c987a5162637bfdb0fc4debc11914e9d3d6480c6bcfc9162fcadf879fcc5846"
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
