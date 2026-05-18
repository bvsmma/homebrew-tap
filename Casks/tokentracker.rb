cask "tokentracker" do
  version "1.3.1"
  sha256 "cf9a98ba5bae4da0b5bfcb3ee8fc2bf4a5b1f774ce0bd8713c779b7ac82ee199"

  url "https://github.com/bvsmma/TokenTracker/releases/download/v#{version}/TokenTracker-#{version}.dmg"
  name "TokenTracker"
  desc "Native macOS app for tracking Claude AI token usage, costs, and rate limits"
  homepage "https://github.com/bvsmma/TokenTracker"

  app "TokenTracker.app"

  zap trash: [
    "~/Library/Application Support/com.tokentracker",
    "~/Library/Preferences/com.tokentracker.TokenTracker.plist",
  ]
end
