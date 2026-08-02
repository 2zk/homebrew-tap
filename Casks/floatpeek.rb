cask "floatpeek" do
  version "2.1.0"
  sha256 "92a5013ce81fd6744e97ba721ac29fe5faf74a7b21eed7be934a1bf93627d1f0"

  url "https://github.com/2zk/FloatPeek/releases/download/v#{version}/FloatPeek-#{version}.zip",
      verified: "github.com/2zk/FloatPeek/"
  name "FloatPeek"
  desc "Image and PDF browser opened with a global keyboard shortcut"
  homepage "https://github.com/2zk/FloatPeek"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "FloatPeek.app"

  zap trash: [
    "~/Library/Preferences/com.floatpeek.FloatPeek.plist",
    "~/Library/Saved Application State/com.floatpeek.FloatPeek.savedState",
  ]

  caveats <<~EOS
    FloatPeek is ad-hoc signed and has not been notarized by Apple.
    If macOS blocks the first launch:
      1. Try to open FloatPeek once.
      2. Open System Settings > Privacy & Security.
      3. Scroll to Security and click Open Anyway for FloatPeek.
  EOS
end
