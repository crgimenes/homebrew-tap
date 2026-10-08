class Filo < Formula
  desc "Embeddable Lisp for Go with deterministic execution and explicit limits"
  homepage "https://github.com/crgimenes/filo"
  url "https://github.com/crgimenes/filo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "08b356ece0dac3a98a3f6a2723829cfb8868143d488f636fe9848ac8142de2b1"
  license "MIT"

  resource "filo-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filo-darwin-universal"
      sha256 "b580f41652629334885b65185f24f595b1240daf149bfe30a93c007ebd826a74"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filo-linux-amd64.gz"
        sha256 "dbc7b66016d811640548dd64171fe00657c45068867f3ac64dbe971054b85d6c"
      end

      on_arm do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filo-linux-arm64.gz"
        sha256 "608be6a2ef4e7a335dee2593522ec47b7e7b5a31eca14ecf673d17b08fef39e9"
      end
    end
  end

  resource "filofix-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofix-darwin-universal"
      sha256 "fba48ace3c5bb9754740fbdaf1d33443b04b34429407c9616f2d30af73c440f1"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofix-linux-amd64.gz"
        sha256 "787e478f245233159bac5974765804a258554da9e58315498bd34f4a1e73b16d"
      end

      on_arm do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofix-linux-arm64.gz"
        sha256 "2129fd454045e7112256a0b97c7ecf9e912ab6bf08a708bbd33c64d9854c59d5"
      end
    end
  end

  resource "filofmt-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofmt-darwin-universal"
      sha256 "219cbc94c6cef3159d17b07cf549bc2ae353b1a9583935885fae4be66f8ca15d"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofmt-linux-amd64.gz"
        sha256 "d75d4410e6c1f291143a1fc3f9996e197afa08d3287b07d44d5aef3784ce44d7"
      end

      on_arm do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofmt-linux-arm64.gz"
        sha256 "456d631f807750ca44423c611e07a2080fca188ac2bc8489bfb23d165a48608b"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filo --version")
    assert_match version.to_s, shell_output("#{bin}/filofix --version")
    assert_match version.to_s, shell_output("#{bin}/filofmt --version")
  end
end
