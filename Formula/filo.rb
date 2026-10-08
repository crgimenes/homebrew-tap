class Filo < Formula
  desc "Embeddable Lisp for Go with deterministic execution and explicit limits"
  homepage "https://github.com/crgimenes/filo"
  url "https://github.com/crgimenes/filo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "08b356ece0dac3a98a3f6a2723829cfb8868143d488f636fe9848ac8142de2b1"
  license "MIT"

  resource "filo-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filo-darwin-universal"
      sha256 "20de806092d897fffdb7ff13a39aa07e019c9fdfe1705bfd6cbabf66d24808da"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filo-linux-amd64.gz"
        sha256 "cfc812468b6c5979d9e3322155d121248f68dc14064e25c0433ac49e60e69700"
      end

      on_arm do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filo-linux-arm64.gz"
        sha256 "e1bc967cf48592eaeb2f4e13a932909ae346707dcbe0f4830537b9ef287d9525"
      end
    end
  end

  resource "filofix-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofix-darwin-universal"
      sha256 "2ff8f3cbc88bdaab69b9e96907c9f9040a328931eb891d2364d38693701efc3f"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofix-linux-amd64.gz"
        sha256 "2f0773d406415b70e2671e2fca609235723b801c128a67ec84c3c231b8f39395"
      end

      on_arm do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofix-linux-arm64.gz"
        sha256 "71393c1dc2aee9c3f2e1aa1ced2a62cb21862169a0e5afe3b5729b4d04bf07df"
      end
    end
  end

  resource "filofmt-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofmt-darwin-universal"
      sha256 "3587934de44f675d999242bc1252ed1ba3b8ad563aa22b0c4d25df242e6a97fe"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofmt-linux-amd64.gz"
        sha256 "8e8dd641d5fe6aab0cd576900928bbeb1b95057dd5aec2f034006c4fb8562727"
      end

      on_arm do
        url "https://github.com/crgimenes/filo/releases/download/v0.1.0/filofmt-linux-arm64.gz"
        sha256 "4b945edfa94a66f019ed037ee3486e17c8d29b870dfe874d99ed27f932ab8928"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filo --version")
    assert_match version.to_s, shell_output("#{bin}/filofix --version")
    assert_match version.to_s, shell_output("#{bin}/filofmt --version")
  end
end
