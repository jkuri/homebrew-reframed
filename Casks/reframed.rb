cask "reframed" do
  version "0.12.1"
  sha256 "ddb55c0e2ccd9786a4ebf456f8a525fd99f87c71e2926439e3ab6adc02bb9820"

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
