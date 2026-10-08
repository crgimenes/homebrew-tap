class Rocchetto < Formula
  desc "POSIX shell whose utilities are Filo programs"
  homepage "https://github.com/crgimenes/rocchetto"
  url "https://github.com/crgimenes/rocchetto/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "dc6cb2a87034650ca22c6b449997c534370b13f42464a18282be51bd4451fef4"
  license "MIT"

  resource "rocchetto-bin" do
    on_macos do
      url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.1/rocchetto-darwin-universal"
      sha256 "f17a8fcbff2b9a954b3c9bc146b215fba49efe4c00e16615f71c5d44d527e61d"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.1/rocchetto-linux-amd64.gz"
        sha256 "b134a21c1bf9c2894fc1bc476a0623c629b5e231fefb6f72b509bedf650ff41f"
      end

      on_arm do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.1/rocchetto-linux-arm64.gz"
        sha256 "b1a608261ee1cdb2327cc2d3743883a3c6f72c0c3024c33c319ba8bb19c38a69"
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
