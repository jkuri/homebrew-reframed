cask "reframed" do
  version "0.9.3"
  sha256 "82874bca3de1a6b68bf3977ec3fe4e296c85b7c44869b5bf8e9b500fb6edb066"

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
