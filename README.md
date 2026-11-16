# my-monkeys/homebrew-tap

Homebrew tap for [My-Monkey](https://my-monkey.fr) apps.

## OpenSuperWhisper

macOS dictation with local Whisper/Parakeet transcription, the maintained
[My-Monkey fork](https://github.com/my-monkeys/OpenSuperWhisper).

```sh
brew install --cask my-monkeys/tap/openmonkeywhisper
```

Until November 2026 the cask was called `opensuperwhisper`. That name also belongs to the original,
unmaintained app in homebrew/cask, which made `brew install --cask opensuperwhisper` install the wrong
app (#323 on the app's repository). `my-monkeys/tap/opensuperwhisper` still works and still gets every
release, but it is deprecated. To move over:

```sh
brew uninstall --cask my-monkeys/tap/opensuperwhisper
brew install --cask my-monkeys/tap/openmonkeywhisper
```

The app is the same, so your settings and history stay. It keeps its name, OpenSuperWhisper.
