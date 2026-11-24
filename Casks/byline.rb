cask "byline" do
  version "0.18.0"
  sha256 "c6f70059ed6337c4936429ee4ce021d2c5c81781198290e0e5517e87c136c088"

  url "https://github.com/by123/byline-releases/releases/download/v#{version}/Byline-#{version}-universal.dmg"
  name "Byline"
  desc "Terminal with live per-tab status for Claude Code, Codex, CLI agents"
  homepage "https://github.com/by123/byline-releases"

  depends_on macos: :big_sur

  app "Byline.app"

  zap trash: [
    "~/Library/Application Support/Byline",
    "~/Library/Preferences/sh.byline.app.plist",
    "~/Library/Saved Application State/sh.byline.app.savedState",
  ]
end
