cask "reframed" do
  version "0.9.4"
  sha256 "64cb72c312d169feb9ee1dda715a4e197de5d02054ca74a9c9c0c7f0159a41d8"

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
