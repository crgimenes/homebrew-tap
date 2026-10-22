cask "fosforo" do
  version "1.0.2"
  sha256 "74240ffefb399f15d508445bc47e56b9f5388355cdaab45404c823b4e964f138"

  url "https://github.com/crgimenes/fosforo/releases/download/v#{version}/fosforo-macos.zip"
  name "fosforo"
  desc "Terminal emulator with a Metal renderer and Filo configuration"
  homepage "https://github.com/crgimenes/fosforo"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "fosforo.app"
end
