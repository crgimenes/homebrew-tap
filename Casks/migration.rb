cask "migration" do
  version "5.1.3"
  sha256 "2ec7b4c247703f0bca67dc58c22efb04384f97ddca860e1bd8740ce5c559a284"

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
