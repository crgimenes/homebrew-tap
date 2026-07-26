cask "keikiban" do
  version "0.0.2"
  sha256 "b4079c407bed017007574bdcdd3c6365b865b7ac1735b519dd513284e7ad47c4"

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
