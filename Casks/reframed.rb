cask "reframed" do
  version "0.11.0"
  sha256 "6b47dd2341e218ac39fa0b45307c27bec1f1aab3939e333231f8d0b98eae94d5"

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
