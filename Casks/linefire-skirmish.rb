cask "linefire-skirmish" do
  version "0.0.2"
  sha256 "2349e1ae964775e25aa18e2b9feba900beac58357207cd869d0d8204d78fe2a2"

  url "https://github.com/crgimenes/linefire-skirmish/releases/download/v#{version}/linefire-skirmish-darwin-universal.zip"
  name "linefire-skirmish"
  desc "Programming game where you write a Filo AI and your fleet does the fighting"
  homepage "https://github.com/crgimenes/linefire-skirmish"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "linefire-skirmish.app"
end
