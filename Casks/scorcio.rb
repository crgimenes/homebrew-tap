cask "scorcio" do
  version "0.1.1"
  sha256 "4a210d132a1d06f02b41a68ac796769a5514fb10ad2b3eff46ac090c18590999"

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
