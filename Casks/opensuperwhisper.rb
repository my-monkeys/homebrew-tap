cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.6"

  on_arm do
    sha256 "df89ff85d8dcd5e3df9d3d04d5d2f33fee0ee3195ca54cccbe490853a73fca54"
  end
  on_intel do
    sha256 "cd63ceb5fd2d95aaeecda770d05f6bb0464e6027ad653fc60ca7bb3fcaa88da7"
  end

  url "https://github.com/my-monkeys/OpenSuperWhisper/releases/download/v#{version}/OpenSuperWhisper-#{arch}-#{version}.dmg",
      verified: "github.com/my-monkeys/OpenSuperWhisper/"
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
