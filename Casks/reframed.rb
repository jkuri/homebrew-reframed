cask "reframed" do
  version "0.14.0"
  sha256 "66e24f674a5249df9d0ea68569fada990028ffcb468f61ae76bd0e7c5da5b749"

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
