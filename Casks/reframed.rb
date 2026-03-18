cask "reframed" do
  version "0.14.3"
  sha256 "8a3a08117d8f524a126d7faf4ddbe4a30235693ac89d0c1e3d1c68c999b7ad32"

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
