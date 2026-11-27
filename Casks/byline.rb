cask "byline" do
  version "0.18.5"
  sha256 "afa4ba078d836ace8b69f9467c6a87573530d751fcf1b514c98265825fed95f4"

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
