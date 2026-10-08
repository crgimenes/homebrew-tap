class FiloGames < Formula
  desc "Games and demos written in Filo, each its own program"
  homepage "https://github.com/crgimenes/filo-games"
  url "https://github.com/crgimenes/filo-games/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7700b27911f040fdab7d3663b554a0dbc46d7afb1d0c723b11d4a7308a7e8862"
  license "MIT"

  resource "filo-donut-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-donut-darwin-universal"
      sha256 "04a4b840b3887c9e3c2ad257b580ee8b04f1ec6ef9660d2b6699015f8b4f0692"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-donut-linux-amd64.gz"
        sha256 "a1d4584f6d662ccf40c6809136712d05cef4e7427d25943b0b7d222db18e7004"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-donut-linux-arm64.gz"
        sha256 "45dfc6a5e3e58145aa9f5bb5498d124cb779a943f6c6b9eb59048057aef425d5"
      end
    end
  end

  resource "filo-down-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-down-darwin-universal"
      sha256 "41f4561d1bad7ec2e8523263ba50524271e9f893d9128ad3fd64a92994977471"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-down-linux-amd64.gz"
        sha256 "6e972a7bc2b7d6c0e3729d0d045f3ac6d8281bc2029b6dd5abca4f9a0038c1ba"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-down-linux-arm64.gz"
        sha256 "b6def208e2f6bfea20dec53f57137700ee3c4b8224acce8922d69f05fcd6c4cf"
      end
    end
  end

  resource "filo-fire-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-fire-darwin-universal"
      sha256 "1bf091d49c61d9d73a246d1d80df312a76de21d91f5982db8d3b3e3a70137635"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-fire-linux-amd64.gz"
        sha256 "0a26d47f834214cd70a9632a15872d68e5eaf63eef649f967931ecf3a341567f"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-fire-linux-arm64.gz"
        sha256 "cc19a54859c5e22af68dd709778b3bd25ac77653e4f06e69d96e522d415f1ed8"
      end
    end
  end

  resource "filo-snake-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-snake-darwin-universal"
      sha256 "cd5ca2d8c6ab4abdb85dd881262258fcb6a3cc0e48d83e4fdab997a064c50e8c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-snake-linux-amd64.gz"
        sha256 "0673b63ab925144bbaa4183ec22db46d100fa593ab09046b7d1fa33c61a77364"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.1/filo-snake-linux-arm64.gz"
        sha256 "9b9fe7dc420b69b3d03b346d57e7b7a2a7039b83e513c8f434151b3a1a12261b"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name.delete_suffix("-bin") }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filo-donut --version")
    assert_match version.to_s, shell_output("#{bin}/filo-down --version")
    assert_match version.to_s, shell_output("#{bin}/filo-fire --version")
    assert_match version.to_s, shell_output("#{bin}/filo-snake --version")
  end
end
