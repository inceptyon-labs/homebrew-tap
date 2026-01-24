cask "freeport" do
  version "0.7.6"
  sha256 :no_check # Update with actual SHA256 when releasing

  url "https://github.com/inceptyon-labs/freeport/releases/download/v#{version}/Freeport-#{version}.dmg"
  name "Freeport"
  desc "Your turnstile for AI coding assistants - unified proxy for Claude, Gemini, Copilot & more"
  homepage "https://github.com/inceptyon-labs/freeport"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Freeport.app"

  zap trash: [
    "~/Library/Application Support/Freeport",
    "~/Library/Preferences/io.inceptyon.Freeport.plist",
    "~/Library/Caches/Freeport",
  ]
end
