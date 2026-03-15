cask "reframed" do
  version "0.14.1"
  sha256 "871e927ee32cfb2796694fa07dabc7d6bae2b66e9069e981455e3c606f49e568"

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
