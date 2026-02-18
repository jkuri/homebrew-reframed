cask "reframed" do
  version "0.9.1"
  sha256 "311ff438c700b9f652f0d71b17f677bfe391fdee682e237f6d3266d93fbee7aa"

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
