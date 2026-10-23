class Carillon < Formula
  desc "Synthesizer and terminal tracker for chiptune music and sound effects"
  homepage "https://github.com/crgimenes/carillon"
  url "https://github.com/crgimenes/carillon/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "2a572dbf748dabbe34755c6d5f95366844dd5ac9b082ce14734460a26e90ce26"
  license "MIT"

  resource "carillon-bin" do
    on_macos do
      url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/carillon-darwin-universal"
      sha256 "2087a7725d941ede2d786b3a32009c43d63f6c6d58839342515a1ca65e6c17e9"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/carillon-linux-amd64.gz"
        sha256 "124f94f74a0961847ae77d4eb7e72a30ca861dbe38e2426ebb76fb96f20d63bc"
      end

      on_arm do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/carillon-linux-arm64.gz"
        sha256 "604730d07ce60175fc316f0ee7807f69a612a579bd7c214266dac2b01795d866"
      end
    end
  end

  resource "cilindro-play-bin" do
    on_macos do
      url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro-play-darwin-universal"
      sha256 "885bf30d19ff72644ca4bd845fc7872c5cf165eec6df2999d1ee3e47eb2586e4"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro-play-linux-amd64.gz"
        sha256 "1aa7d56c025108a71c1a8a04ac0709e5c6ff5086889052adb35f85a5783f68c3"
      end

      on_arm do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro-play-linux-arm64.gz"
        sha256 "d2e317f810ba9754b2a084c7f7ead779ad62ff96e940da91ed8f76b7c23eb212"
      end
    end
  end

  resource "cilindro2c-bin" do
    on_macos do
      url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro2c-darwin-universal"
      sha256 "bb0afcede140f7388a3934590df8b5f398d3cb81576cfda6c392f90da31d220f"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro2c-linux-amd64.gz"
        sha256 "a9112f9f8585f93c4712f72249255303601475f16cd83baa62695bbfff3f23e1"
      end

      on_arm do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro2c-linux-arm64.gz"
        sha256 "74a3aa20e137851fe86397c3885b5a35d712b15ec4ee3a454f189bd62bddedc8"
      end
    end
  end

  resource "cilindro2wav-bin" do
    on_macos do
      url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro2wav-darwin-universal"
      sha256 "be553fc880718610445d6442121bce70756dae123b2b94a8c2a2dc57317db57c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro2wav-linux-amd64.gz"
        sha256 "8a555214d697e570389e19e8532e76d3a4f97e46b94ceac29628c749b7723ab7"
      end

      on_arm do
        url "https://github.com/crgimenes/carillon/releases/download/v0.0.1/cilindro2wav-linux-arm64.gz"
        sha256 "784ee41391efd4b6eeb3ab3894a3fa75a374d725001959234c4bedaa2c113d4e"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/carillon --version")
    assert_match version.to_s, shell_output("#{bin}/cilindro-play --version")
    assert_match version.to_s, shell_output("#{bin}/cilindro2c --version")
    assert_match version.to_s, shell_output("#{bin}/cilindro2wav --version")
  end
end
