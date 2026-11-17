cask "byline" do
  version "0.14.0"
  sha256 "02ed092a1778a0dbaefba6982d5191bf587b99d07c92b7b50d9b6b6ce9eb164b"

  url "https://github.com/by123/byline/releases/download/v#{version}/Byline-#{version}-universal.dmg"
  name "Byline"
  desc "Terminal with live per-tab status for Claude Code, Codex, CLI agents"
  homepage "https://github.com/by123/byline"

  depends_on macos: :big_sur

  app "Byline.app"

  zap trash: [
    "~/Library/Application Support/Byline",
    "~/Library/Preferences/sh.byline.app.plist",
    "~/Library/Saved Application State/sh.byline.app.savedState",
  ]
end
