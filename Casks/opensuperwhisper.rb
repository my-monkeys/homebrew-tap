cask "opensuperwhisper" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.5"

  on_arm do
    sha256 "6c178abcc433539e898f28c2620b97c9358b7af4f97df521869ae112ba489f2b"
  end
  on_intel do
    sha256 "a0985a9a75960e30270926709a110d82acb154bbdf32b7a9b060b8777b980a4a"
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
