cask "windsurf" do
  version "1.0.2"
  sha256 "4b47e428eeaf7aa01ecbcff4928177b4e8b8eb6d5ad2091b17ae30e1f51125af"

  url "https://codeium.com/windsurf/download_mac"
  name "windsurf"
  desc "The first agentic IDE built to keep you in a state of flow"
  homepage "https://codeium.com/windsurf"

  livecheck do
    skip "No versions listed on URL"
  depends_on macos: ">= :catalina"

  app "Windsurf.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/Windsurf",
    "~/Library/Application Support/Windsurf",
    "~/Library/Caches/com.exafunction.windsurf",
    "~/Library/Saved Application State/com.exafunction.windsurf.savedState",
    "~/Library/Preferences/com.exafunction.windsurf.plist",
    "~/Library/Caches/com.exafunction.windsurf.ShipIt"
  ]
end
