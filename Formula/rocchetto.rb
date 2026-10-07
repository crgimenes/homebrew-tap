class Rocchetto < Formula
  desc "POSIX shell whose utilities are Filo programs"
  homepage "https://github.com/crgimenes/rocchetto"
  url "https://github.com/crgimenes/rocchetto/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "583858da337f2bca05a961cab7fe2e3bc1fce04e51211a184d686ccbc1b11b3f"
  license "MIT"

  resource "rocchetto" do
    on_macos do
      url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.0/rocchetto-darwin-universal"
      sha256 "8a9a05cf78364eceb9363bf5d91847b3961fd26f6d2de511f0a27b713756841c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.0/rocchetto-linux-amd64.gz"
        sha256 "cfca0a6c8b0c42bcf7c7bd9fa665de13f587f0b02a3e1aedc0d770527d3acc48"
      end

      on_arm do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.0/rocchetto-linux-arm64.gz"
        sha256 "279c43e568a4706763f9d9fd5a6de829a99c0b971c3fab0bd9577e8358d21636"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rocchetto --version")
  end
end
