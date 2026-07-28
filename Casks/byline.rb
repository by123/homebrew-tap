cask "byline" do
  version "0.12.0"
  sha256 "38cc96be6464ddad6898a7eb6325a9e800c282fe0a8a275e48d6433a4d24a23c"

  url "https://github.com/by123/byline/releases/download/v#{version}/Byline-#{version}-universal.dmg"
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
