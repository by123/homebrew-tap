cask "byline" do
  version "0.18.4"
  sha256 "ded935341db4d7b36c0bba8c731869ebc3fdb453289551a02bfd8e7078d914ee"

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
