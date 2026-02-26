cask "reframed" do
  version "0.10.2"
  sha256 "4298f060d7109148deaa0d1e3a9001d4d34608aac70bd08b133cf9a8d913cc67"

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
