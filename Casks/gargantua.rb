cask "gargantua" do
  version "0.1.1"
  sha256 "df825c0e853f180d12fa449d22de0f17cda87b79ee35cbaacd1dd71e02ecf56d"

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
