cask "tokentracker" do
  version "1.3.7"
  sha256 "b51f665acd26be271f9d330837a7fd8e268f483d4c68ede9ac5fa4e02cf73647"

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
