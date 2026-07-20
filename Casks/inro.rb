cask "inro" do
  version "0.1.3"
  sha256 "6454bb0d4199c1ed11d5b685bc330cab49e30be1fdd18b34f984aae5e0b5f2f5"

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
