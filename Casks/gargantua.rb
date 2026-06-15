cask "gargantua" do
  version "0.4.1"
  sha256 "a3c5ac7b3db363436368706c0ecd2da0cc8fbf6b5ee5f542015c9d227003aed3"

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
