cask "keikiban" do
  version "0.0.3"
  sha256 "f160715b2f9ad23958ea385c2273c11a9a7a3ac514cfa6baf156279fd4ed6ba9"

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
