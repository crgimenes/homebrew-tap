cask "inro" do
  version "0.1.1"
  sha256 "53dcacc91750494d13971c6766f662ff629658ff7bdc7b270e0d8706e6c34c56"

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
