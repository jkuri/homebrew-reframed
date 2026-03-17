cask "reframed" do
  version "0.14.2"
  sha256 "e308642c35a64dbb7760b0809f7b71d59cf5ab567b4bf60acd03fda27d107a44"

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
