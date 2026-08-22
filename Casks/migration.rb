cask "migration" do
  version "5.1.2"
  sha256 "8f2333d27093d452c539e954ae6c8a52c9e6c1baa8334700f26a97a151cbdca4"

  url "https://github.com/crgimenes/migration/releases/download/v#{version}/migration-darwin-universal.zip"
  name "migration"
  desc "SQL migration tool"
  homepage "https://github.com/crgimenes/migration"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "migration.app"
end
