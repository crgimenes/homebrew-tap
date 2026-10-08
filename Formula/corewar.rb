class Corewar < Formula
  desc "Terminal Core War: pMARS-compatible MARS, arena and warrior picker in Filo"
  homepage "https://github.com/crgimenes/corewar"
  url "https://github.com/crgimenes/corewar/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "afff60cd918ec467ba1c70fab702515cbb908893cab8718deae835e1ffc9f6b1"
  license "MIT"

  resource "corewar" do
    on_macos do
      url "https://github.com/crgimenes/corewar/releases/download/v0.1.1/corewar-darwin-universal"
      sha256 "d79e1c774f06b29c2b8f380fd0ab885dc214cfcc16df14ed4480426209df4171"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/corewar/releases/download/v0.1.1/corewar-linux-amd64.gz"
        sha256 "edb7036fb0a19c734b82474dbae1ec1a33c15ca1c234493108bf84b2b15753ad"
      end

      on_arm do
        url "https://github.com/crgimenes/corewar/releases/download/v0.1.1/corewar-linux-arm64.gz"
        sha256 "11ded9e4a4052f290daf82c28ba53fc20d90dccf90989b2fc7aa5a2e99210a68"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/corewar --version")
  end
end
