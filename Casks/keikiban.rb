cask "keikiban" do
  version "0.0.4"
  sha256 "19970d24103d6c3c9b4715c693ec5392aff7c266f9ef5447dee546f0f3f0617e"

  url "https://github.com/crgimenes/keikiban/releases/download/v#{version}/keikiban-darwin-universal.zip"
  name "keikiban"
  desc "PostgreSQL dashboard: database load, top SQL, locks, index health"
  homepage "https://github.com/crgimenes/keikiban"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "keikiban.app"
end
