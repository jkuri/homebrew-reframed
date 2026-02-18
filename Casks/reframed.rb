cask "reframed" do
  version "0.9.0"
  sha256 "4b755640d5b8d57cae87fc95a3184de0b60a2b18f2ec356f28b78da001ac7403"

  url "https://github.com/jkuri/Reframed/releases/download/v#{version}/Reframed-#{version}.dmg"
  name "Reframed"
  desc "Screen recorder with built-in video editor for macOS"
  homepage "https://github.com/jkuri/Reframed"

  depends_on macos: ">= :sequoia"

  app "Reframed.app"

  zap trash: [
    "~/.reframed",
  ]
end
