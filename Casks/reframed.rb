cask "reframed" do
  version "0.14.7"
  sha256 "ccbe4abdd2888d4d3d67e678ec19287cc50e0aa85759e4dbcff1da96a9d7ae18"

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
