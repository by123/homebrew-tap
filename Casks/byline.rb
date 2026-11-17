cask "byline" do
  version "0.14.1"
  sha256 "10de53c64d4a37a2136356629dc16897d63de1a029af25d2b2a78fae57c3eb24"

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
