cask "fosforo" do
  version "0.1.1"
  sha256 "ca01eacfb28875bbcc74995d1e08341967b1b289d17a00e67f5a77145c1e78c9"

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
