cask "inro" do
  version "0.1.0"
  sha256 "865851b16e9e2ce07264ec6458edc977f5bdfd2289ac1fd0ccbdcd166a8c361a"

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
