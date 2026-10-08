class ClangFilo < Formula
  desc "Filo as a C runtime: two-file core, no libc, no allocation after init"
  homepage "https://github.com/crgimenes/clang_filo"
  url "https://github.com/crgimenes/clang_filo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f9bfbc49ff1c9162db390fe4df14a4be0194d9cdb7fa6b2c317c36ff605a783f"
  license "MIT"

  resource "clang-filo-bin" do
    on_macos do
      url "https://github.com/crgimenes/clang_filo/releases/download/v0.1.0/clang-filo-darwin-universal"
      sha256 "383def917c9445cebc693d53cd08414875f30fd8e0dabbc711b7f8b8bb42f254"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/clang_filo/releases/download/v0.1.0/clang-filo-linux-amd64.gz"
        sha256 "4b8983ce0a58223400dc8760801393830b630250d93750154d9e3c9329b9a9f9"
      end

      on_arm do
        url "https://github.com/crgimenes/clang_filo/releases/download/v0.1.0/clang-filo-linux-arm64.gz"
        sha256 "da43aac0b7fe9a3ab898669eedfb448ef915ec2670c90f6bdbfb2897054c0288"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clang-filo --version")
  end
end
