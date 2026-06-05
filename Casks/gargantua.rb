cask "gargantua" do
  version "0.2.0"
  sha256 "0832c2a55ff71338ba92eb3f0159e1e56463e10757a148dedffc3f5203392172"

  url "https://github.com/inceptyon-labs/gargantua/releases/download/v#{version}/Gargantua-#{version}.dmg"
  name "Gargantua"
  desc "macOS disk-cleanup and dev-artifact purge tool"
  homepage "https://github.com/inceptyon-labs/gargantua"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Gargantua.app"

  zap trash: [
    "~/Library/Application Support/Gargantua",
    "~/Library/Caches/com.gargantua.app",
    "~/Library/Preferences/com.gargantua.app.plist",
    "~/Library/Saved Application State/com.gargantua.app.savedState",
  ]
end
