cask "migration" do
  version "5.1.4"
  sha256 "432fa43598f481dab7bb60c7cfd254cb81ced819d4acee28ab3658d446c66436"

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
