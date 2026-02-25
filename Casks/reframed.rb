cask "reframed" do
  version "0.10.1"
  sha256 "19c7de6332939ae91b44c66f1e92d47b4f724551cea062091ba8f0c2663b769f"

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
