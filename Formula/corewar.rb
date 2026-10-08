class Corewar < Formula
  desc "Terminal Core War: pMARS-compatible MARS, arena and warrior picker in Filo"
  homepage "https://github.com/crgimenes/corewar"
  url "https://github.com/crgimenes/corewar/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "afff60cd918ec467ba1c70fab702515cbb908893cab8718deae835e1ffc9f6b1"
  license "MIT"

  resource "corewar-bin" do
    on_macos do
      url "https://github.com/crgimenes/corewar/releases/download/v0.1.1/corewar-darwin-universal"
      sha256 "7951725ead8fdf67611fdc6ede7c63418d445e088a3ba4e6b282bff997e5030c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/corewar/releases/download/v0.1.1/corewar-linux-amd64.gz"
        sha256 "ba8bc808bbd38c1d036b2e51a61162afb465adcb2cc0b7b20a94560e4de13168"
      end

      on_arm do
        url "https://github.com/crgimenes/corewar/releases/download/v0.1.1/corewar-linux-arm64.gz"
        sha256 "222e190c2815e991732b3d672a5b0369e36a5dbd137bc0b10bb160fde9d5d8a0"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/corewar --version")
  end
end
