cask "mise-app" do
  version "1.0.9"
  sha256 :no_check

  url "https://github.com/inceptyon-labs/mise/releases/download/v#{version}/Mise-#{version}.dmg"
  name "Mise"
  desc "Grocery lists, recipes, and meal planning — everything in its place"
  homepage "https://github.com/inceptyon-labs/mise"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Mise.app"

  zap trash: [
    "~/Library/Application Support/Mise",
    "~/Library/Preferences/com.inceptyon.mise.plist",
    "~/Library/Caches/Mise",
    "~/Library/Group Containers/group.com.inceptyon.mise",
  ]
end
