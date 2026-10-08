class Edt < Formula
  desc "Text and hex editor for the terminal, written in Filo"
  homepage "https://github.com/crgimenes/edt"
  url "https://github.com/crgimenes/edt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e79f32c60648a08f2c45a643b4e17e03c5c278733a915cec8658f2617ef7048e"
  license "MIT"

  resource "edt-bin" do
    on_macos do
      url "https://github.com/crgimenes/edt/releases/download/v0.1.2/edt-darwin-universal"
      sha256 "c43c30d16027fb5526b374dbfff1af2868ed1f0d5ea1510c8eaf0d1abb3feb47"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.2/edt-linux-amd64.gz"
        sha256 "4051c095f0b82e11ee2c6203be57186c01523892346960cdc8acc2e8476ebcb7"
      end

      on_arm do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.2/edt-linux-arm64.gz"
        sha256 "abc855ce48c28e02283833c5653603e621d6c87fce9cfbdee79ae0f98bccf55f"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edt --version")
  end
end
