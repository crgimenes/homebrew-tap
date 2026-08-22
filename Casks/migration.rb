cask "migration" do
  version "5.1.0"
  sha256 "7deec55141072a2ad2df4a1ea39edf9714e296c3c04d28727d3c46972736b79b"

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
