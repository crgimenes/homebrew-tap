cask "fosforo" do
  version "1.0.0"
  sha256 "12a11bf00de16bde7986aa1236857a7f8918b327fad8cbf97b21c0e35456263b"

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
