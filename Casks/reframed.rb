cask "reframed" do
  version "0.12.0"
  sha256 "7eeb4341f508f361b71e3f5062de247e8b60f6cf71897ff21e8cd4161fa7e255"

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
