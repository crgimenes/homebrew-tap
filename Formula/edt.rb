class Edt < Formula
  desc "Text and hex editor for the terminal, written in Filo"
  homepage "https://github.com/crgimenes/edt"
  url "https://github.com/crgimenes/edt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b781f378cd4a3b6a1d3206cfbf346c88d9fbb548e886194f3a009fa4689454de"
  license "MIT"

  resource "edt" do
    on_macos do
      url "https://github.com/crgimenes/edt/releases/download/v0.1.0/edt-darwin-universal"
      sha256 "6793fe3dff4b74823785893f88b58f17fffaaa5d3030988929055c3848cba2aa"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.0/edt-linux-amd64.gz"
        sha256 "b7f8e2b10cd20a7f3b0948e674cd19d34d4a0a0fd7c116f95622533bfe81be56"
      end

      on_arm do
        url "https://github.com/crgimenes/edt/releases/download/v0.1.0/edt-linux-arm64.gz"
        sha256 "7cd21285c6e9871951b1c6b10ea125519150a9c23a11cab8462f22c4c7715619"
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
