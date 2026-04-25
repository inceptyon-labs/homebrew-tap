cask "mise-app" do
  version "1.1.2"
  sha256 :no_check

  url "https://github.com/inceptyon-labs/homebrew-tap/releases/download/mise-v#{version}/Mise-#{version}.dmg"
  name "Mise"
  desc "Grocery lists, recipes, and meal planning — everything in its place"
  homepage "https://apps.apple.com/app/mise-grocery-meal-planner/id6740015498"

  livecheck do
    url "https://github.com/inceptyon-labs/homebrew-tap/releases?q=mise-v"
    regex(/mise-v(\d+(?:\.\d+)+)/i)
    strategy :page_match
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
