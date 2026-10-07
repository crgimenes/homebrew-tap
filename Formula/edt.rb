class Edt < Formula
  desc "Text and hex editor for the terminal, written in Filo"
  homepage "https://github.com/crgimenes/edt"
  url "https://github.com/crgimenes/edt/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "21fdc6aced4ddc53acb4c2e5199c86864e9fc7316c575f214f525c54464a60b6"
  license "MIT"

  resource "edt" do
    on_macos do
      url "https://github.com/crgimenes/edt/releases/download/v0.1.1/edt-darwin-universal"
      sha256 "64d7a7008b891109ae9145ee8d6a6ef2e548a2a9d26ec7cf482b0a86ddb40c01"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.1/edt-linux-amd64.gz"
        sha256 "83775ad9fd293ed7d3adc0b753244d58b595ad63f55f1d82e6fdc62eba94c435"
      end

      on_arm do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.1/edt-linux-arm64.gz"
        sha256 "78004ae180c6a3975b85c34cdcf4430668c583c88fc422e9e67e319c1d387f58"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edt --version")
  end
end
