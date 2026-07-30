cask "floatpeek" do
  version "2.0.2"
  sha256 "86f57a6a51e84133e5214a0b1fce63d6e2c8671e2639915bdbbd3d020e8587e7"

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
