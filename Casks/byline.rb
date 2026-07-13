cask "byline" do
  version "0.9.0"
  sha256 "4a898a5010ae930486e46d7e02c41201c033158ed13e0baae7863ce7bbae28b6"

  url "https://github.com/by123/byline/releases/download/v#{version}/Byline-#{version}-universal.dmg",
      verified: "github.com/by123/byline/"
  name "Byline"
  desc "Terminal with live per-tab status for Claude Code, Codex, CLI agents"
  homepage "https://github.com/by123/byline"

  depends_on macos: :catalina

  app "Byline.app"

  zap trash: [
    "~/Library/Application Support/Byline",
    "~/Library/Preferences/sh.byline.app.plist",
    "~/Library/Saved Application State/sh.byline.app.savedState",
  ]
end
