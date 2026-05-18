cask "tokentracker" do
  version "1.3.2"
  sha256 "7fc9f22f0b2abd767f59c6ab59a84b9c04a03a2e22946d93bd3486f478336abb"

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
