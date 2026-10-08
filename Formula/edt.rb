class Edt < Formula
  desc "Text and hex editor for the terminal, written in Filo"
  homepage "https://github.com/crgimenes/edt"
  url "https://github.com/crgimenes/edt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e79f32c60648a08f2c45a643b4e17e03c5c278733a915cec8658f2617ef7048e"
  license "MIT"

  resource "edt-bin" do
    on_macos do
      url "https://github.com/crgimenes/edt/releases/download/v0.1.2/edt-darwin-universal"
      sha256 "708296884cbe9e606096b9d76478ab1d6102dfe1de2cec2114f10abb42dcc9cb"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.2/edt-linux-amd64.gz"
        sha256 "ebc5c3c6e61d8d606cbd67c8744af40aabe6a77c17589d0f664936a777094a9e"
      end

      on_arm do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.2/edt-linux-arm64.gz"
        sha256 "7c8d6750ddf117349951ec9278d438c93223fd69dde259a8e02c2921fc60dab1"
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
