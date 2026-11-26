cask "byline" do
  version "0.18.2"
  sha256 "8892b7e69a11bc8b77365b8caf96af1d573bc1dd10a4ab3228550d68d92d9bef"

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
