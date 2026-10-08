class Rocchetto < Formula
  desc "POSIX shell whose utilities are Filo programs"
  homepage "https://github.com/crgimenes/rocchetto"
  url "https://github.com/crgimenes/rocchetto/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "36f9621ea27ec85572d38e0a763083265620c9492693b79c1d0adfd996180861"
  license "MIT"

  resource "rocchetto-bin" do
    on_macos do
      url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.3/rocchetto-darwin-universal"
      sha256 "8aec2078f2d107914ae80a3e3bc13a74c460449aaa4900402a97a1233c0d6337"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.3/rocchetto-linux-amd64.gz"
        sha256 "1c08fbf93104f0cb8a3fe22ca8a9f66b8ae6bba1138ce0cbd8ffa30fef84870a"
      end

      on_arm do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.3/rocchetto-linux-arm64.gz"
        sha256 "02b7479f095b8e8c85405ae76c21f72a1f8568bbd1259c388a6e32215c419803"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rocchetto --version")
  end
end
