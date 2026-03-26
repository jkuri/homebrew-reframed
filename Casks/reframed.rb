cask "reframed" do
  version "0.14.6"
  sha256 "10785548b28b9eddce7b8b5b188d56926fa2bfcabc779cc37caa668670f6e438"

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
