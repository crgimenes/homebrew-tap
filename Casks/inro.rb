cask "inro" do
  version "0.1.4"
  sha256 "5c43bb432846b71d4c13f9e39ce7614406412d1523e9880a0a8e3bbbbb51de7f"

  url "https://github.com/crgimenes/inro/releases/download/v#{version}/inro-darwin-universal.zip"
  name "inro"
  desc "Self-contained PGP desktop app: encrypt, sign, verify and decrypt messages"
  homepage "https://github.com/crgimenes/inro"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "inro.app"
end
