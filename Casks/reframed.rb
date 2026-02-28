cask "reframed" do
  version "0.11.1"
  sha256 "4e4fe83bae880220dc2ac386b37411136ecd3359dfea70e5f2fd334e4565f177"

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
