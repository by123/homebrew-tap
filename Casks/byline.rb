cask "byline" do
  version "0.16.3"
  sha256 "edfc5ab377f0f512616f7dcebac6de730636f9f4a8de6a0cf6cdb403bb9816f5"

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
