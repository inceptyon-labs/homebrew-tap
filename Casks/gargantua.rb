cask "gargantua" do
  version "0.4.8"
  sha256 "7ca9c2ef5d0de567b0062522e0c5131b968291445469843ba0b73ff66db6bfe8"

  url "https://github.com/inceptyon-labs/gargantua/releases/download/v#{version}/Gargantua-#{version}.dmg"
  name "Gargantua"
  desc "Disk-cleanup and dev-artifact purge tool"
  homepage "https://github.com/inceptyon-labs/gargantua"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Gargantua.app"

  zap trash: [
    "~/Library/Application Support/Gargantua",
    "~/Library/Caches/com.gargantua.app",
    "~/Library/Preferences/com.gargantua.app.plist",
    "~/Library/Saved Application State/com.gargantua.app.savedState",
  ]
end
