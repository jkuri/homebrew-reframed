cask "reframed" do
  version "0.9.2"
  sha256 "366cb5b03fd3f5c7bbd6ad734bdfa8936ca7558d5b7969725d8d28bf60ef4440"

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
