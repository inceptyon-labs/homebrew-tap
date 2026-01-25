cask "freeport" do
  version "0.7.12"
  sha256 "dac1435254c5d830b3d535270102d7f39bfb4007d030733aed2e5b9c913fc8cc"

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
    "~/Library/Preferences/com.inceptyon.freeport.plist",
    "~/Library/Caches/Freeport",
  ]
end
