cask "gargantua" do
  version "0.1.2"
  sha256 "ea1942ea30657a6a805a0dcfa6c91f89b4798f94bc7613fa4673aa716bb1fa5d"

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
