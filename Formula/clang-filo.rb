class ClangFilo < Formula
  desc "Filo as a C runtime: two-file core, no libc, no allocation after init"
  homepage "https://github.com/crgimenes/clang_filo"
  url "https://github.com/crgimenes/clang_filo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f9bfbc49ff1c9162db390fe4df14a4be0194d9cdb7fa6b2c317c36ff605a783f"
  license "MIT"

  resource "clang-filo-bin" do
    on_macos do
      url "https://github.com/crgimenes/clang_filo/releases/download/v0.1.0/clang-filo-darwin-universal"
      sha256 "7f5c05ceb090e7c6c600a47860958e94d2acef797e4fb0bd7f405d0ada0e0c2e"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/clang_filo/releases/download/v0.1.0/clang-filo-linux-amd64.gz"
        sha256 "bbc247a9cf9d21cee64c6eb96c761b075b09cd4d1579f2f889b091a63be23a08"
      end

      on_arm do
        url "https://github.com/crgimenes/clang_filo/releases/download/v0.1.0/clang-filo-linux-arm64.gz"
        sha256 "25c7285b0043150b40a04420ceb930fc6cfa9bfd67995a28968cad5a39216086"
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
