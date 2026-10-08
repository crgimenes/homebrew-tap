class Rocchetto < Formula
  desc "POSIX shell whose utilities are Filo programs"
  homepage "https://github.com/crgimenes/rocchetto"
  url "https://github.com/crgimenes/rocchetto/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "8149f09f7331b47ffa140fbd910b98a0ec801a894391ca9394977ec761eba445"
  license "MIT"

  resource "rocchetto-bin" do
    on_macos do
      url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.4/rocchetto-darwin-universal"
      sha256 "85bf771aacc655caaef9006d858fc16fee81329bbf2c4393224714ddd2ba20a9"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.4/rocchetto-linux-amd64.gz"
        sha256 "d58b5d66c2296b5a2eb547272ac55621d2926f98240a65eeea70b9b380b7a1b7"
      end

      on_arm do
        url "https://github.com/crgimenes/rocchetto/releases/download/v0.1.4/rocchetto-linux-arm64.gz"
        sha256 "643d7961ef71ed9855878a172ebe2a582bc2ff6be71aaa87ddfdf513d24f8f3f"
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
