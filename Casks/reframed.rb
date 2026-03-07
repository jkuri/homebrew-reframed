cask "reframed" do
  version "0.13.2"
  sha256 "8fb91bd947cb01a921d85b029e78106bc13cb83825d7a72cbee91861d9e39bf8"

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
