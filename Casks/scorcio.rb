cask "scorcio" do
  version "0.1.0"
  sha256 "d92b5ec257e97092d91202f6e89a9b94e69b218db294d04a7f8996b1dd5f8edc"

  url "https://github.com/crgimenes/scorcio/releases/download/v#{version}/scorcio-darwin-universal.zip"
  name "scorcio"
  desc "Fast, deliberately limited web browser for technical users"
  homepage "https://github.com/crgimenes/scorcio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "scorcio.app"
end
