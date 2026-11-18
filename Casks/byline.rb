cask "byline" do
  version "0.16.1"
  sha256 "e983be9f8d4a25b8951feb3c917cbd7052fbf0bd2d6d69b135b0f20f8befded8"

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
