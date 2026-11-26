cask "floatpeek" do
  version "2.3.2"
  sha256 "9527ff6441386aa7067c85c9a2a935672505f1ced4fa0c274959b943535c9fbd"

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
