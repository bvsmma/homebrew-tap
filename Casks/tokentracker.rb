cask "tokentracker" do
  version "1.3.6"
  sha256 "9fd7875a34a38ff3a32519195d40a5502c283ade6d527f8f831fabdc38c61574"

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
