cask "migration" do
  version "5.1.1"
  sha256 "9462bfa24516f293261188d3f1073209746fc37992ee7203e84bf0a9c00c2949"

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
