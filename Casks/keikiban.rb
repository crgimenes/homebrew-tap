cask "keikiban" do
  version "0.0.6"
  sha256 "80692f2b0c2f7b28c6f3567a589677b18c98a11a96a252152a5d68b717ebdbde"

  url "https://github.com/crgimenes/keikiban/releases/download/v#{version}/keikiban-darwin-universal.zip"
  name "keikiban"
  desc "PostgreSQL dashboard: database load, top SQL, locks, index health"
  homepage "https://github.com/crgimenes/keikiban"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "keikiban.app"
end
