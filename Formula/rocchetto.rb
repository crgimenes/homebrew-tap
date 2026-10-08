class Rocchetto < Formula
  desc "POSIX shell whose utilities are Filo programs"
  homepage "https://github.com/crgimenes/rocchetto"
  url "https://github.com/crgimenes/rocchetto/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "61afe207dc6c80615f619600b7f80c623fb0c8a37fb14586f618cb7b4535cde7"
  license "MIT"

  resource "rocchetto-bin" do
    on_macos do
      url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.2/rocchetto-darwin-universal"
      sha256 "093074c4ab7d4e6d0732bae2198e4b8331012b08b0a77a510dbcd224121610ce"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.2/rocchetto-linux-amd64.gz"
        sha256 "b6b45ddfab913a4f743779a1e4587416e8f1f0a08c971fa1c951f951c538ac00"
      end

      on_arm do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.2/rocchetto-linux-arm64.gz"
        sha256 "28584823d7511186fcdd0fadb0cb03baf83fba02729b871db788305846c61728"
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
