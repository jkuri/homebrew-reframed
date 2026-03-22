cask "reframed" do
  version "0.14.4"
  sha256 "ffd3f0869193b65c38d68e1019e3c9266968a9b4d91417a60d1260fb9ae1faf1"

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
