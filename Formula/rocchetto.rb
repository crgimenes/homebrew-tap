class Rocchetto < Formula
  desc "POSIX shell whose utilities are Filo programs"
  homepage "https://github.com/crgimenes/rocchetto"
  url "https://github.com/crgimenes/rocchetto/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "583858da337f2bca05a961cab7fe2e3bc1fce04e51211a184d686ccbc1b11b3f"
  license "MIT"

  resource "rocchetto-bin" do
    on_macos do
      url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.0/rocchetto-darwin-universal"
      sha256 "b4bca3350379c090454f74167a7dd2c246c8604508dfd435dfeb35b228778635"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.0/rocchetto-linux-amd64.gz"
        sha256 "9697196ef6f97b283bbfefac5469e08675504ad918235522c2ea0dbe8ba7e6e9"
      end

      on_arm do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.0/rocchetto-linux-arm64.gz"
        sha256 "2450cc067886b3930282d1c4efba030547e6f12e147bd765bc009a1334de85ff"
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
