cask "inro" do
  version "0.1.2"
  sha256 "3b86768285634f6c2ccaa9e9137e7ab583753686f9d4e52b61aed62b68a716a9"

  url "https://github.com/crgimenes/inro/releases/download/v#{version}/inro-darwin-universal.zip"
  name "inro"
  desc "Self-contained PGP desktop app: encrypt, sign, verify and decrypt messages"
  homepage "https://github.com/crgimenes/inro"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "inro.app"
end
