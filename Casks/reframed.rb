cask "reframed" do
  version "0.13.1"
  sha256 "e8bd71667dc371b2009e450d782a5fefccb5c65d9c4856e6a73590e3b027e316"

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
