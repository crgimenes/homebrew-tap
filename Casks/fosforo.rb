cask "fosforo" do
  version "1.0.1"
  sha256 "3130c32a250d8db006dbd37440e8ad1cbaa588b58e0c81270f932d4e54f31b60"

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
