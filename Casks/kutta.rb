cask "kutta" do
  version "0.0.13"
  sha256 "99728068d47b8c818c4f5290dc280523fb10ef15a52e2b43889c51b33e090824"

  url "https://github.com/crgimenes/kutta/releases/download/v#{version}/kutta-darwin-universal.zip"
  name "kutta"
  desc "Qualitative 2D wind tunnel with an airfoil editor, for aeromodelers"
  homepage "https://github.com/crgimenes/kutta"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "kutta.app"
end
