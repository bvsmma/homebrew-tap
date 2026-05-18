cask "tokentracker" do
  version "1.3.3"
  sha256 "bdebd6893cac2c3ffce70cdde02bc3f6336137da0c548834f27c78c19dcfa76f"

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
