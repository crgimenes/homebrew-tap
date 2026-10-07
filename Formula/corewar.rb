class Corewar < Formula
  desc "Terminal Core War: pMARS-compatible MARS, arena and warrior picker in Filo"
  homepage "https://github.com/crgimenes/corewar"
  url "https://github.com/crgimenes/corewar/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "92f8ca52c232a9dd075ea9ea3078557022e95c0f0e991321226ddc17a623c326"
  license "MIT"

  resource "corewar" do
    on_macos do
      url "https://github.com/crgimenes/corewar/releases/download/v0.1.0/corewar-darwin-universal"
      sha256 "e5553c032116d24e84ba3c52336e99ce530e709c0ea76b69a45b85bf29308f2b"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/corewar/releases/download/v0.1.0/corewar-linux-amd64.gz"
        sha256 "34c1a1dcac18faad74bc14df515bddbc49e0466c77811851ad5174c337a93b37"
      end

      on_arm do
        url "https://github.com/crgimenes/corewar/releases/download/v0.1.0/corewar-linux-arm64.gz"
        sha256 "6737f161547269d29cc5667e761331d7be0487ce9925ef1fd88923a67b7ac180"
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
