class FiloGames < Formula
  desc "Games and demos written in Filo, each its own program"
  homepage "https://github.com/crgimenes/filo-games"
  url "https://github.com/crgimenes/filo-games/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ce3c4023e1838a997e0b00933c8972c6fa49b20a15cb7912772485900b95d402"
  license "MIT"

  resource "filo-donut" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-donut-darwin-universal"
      sha256 "498bfad7f0e7a3abf29658cee0742486572c1e2d1a3f3229e1850b3b4e81ff63"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-donut-linux-amd64.gz"
        sha256 "3b45c4ff2a52a3e8e1052bbac770607cdd1f5d43c690407ccd72e3a259c07b86"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-donut-linux-arm64.gz"
        sha256 "7875b0698b8daea51d96e9bb04d8a726e75b347fe95ce73a253a4691af4068f2"
      end
    end
  end

  resource "filo-down" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-down-darwin-universal"
      sha256 "cc00ea98ee96369967d2aaeea7d2fa04ff9fd5242029e72635df10a586f3ea4e"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-down-linux-amd64.gz"
        sha256 "b7fe40528a8e76a1102c70e9a38ee6620a9103ee6b3604364b3a734ae10111a0"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-down-linux-arm64.gz"
        sha256 "ec55963c80f0cbc413f9a21f79132958351caf678a64fcf769dfca63c692276a"
      end
    end
  end

  resource "filo-fire" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-fire-darwin-universal"
      sha256 "629c94c79a723b20b0aa8d08376d55f795b97908e1c895c27016cd5ad398867a"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-fire-linux-amd64.gz"
        sha256 "b45479d757774e59682be8068ec83e7a61132ca42113b0dcf7f99b6c0157b920"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-fire-linux-arm64.gz"
        sha256 "8d37252a8ab1bb8947c1c2905b63b74e773c7290d85d2c80eb7195e5b333ef3e"
      end
    end
  end

  resource "filo-snake" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-snake-darwin-universal"
      sha256 "5600e31c9e665c5323c77413fbc71e875b79289770dcdd120c10fcae9c5f0541"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-snake-linux-amd64.gz"
        sha256 "024d5517120ba2daca49c06250911d8735796492e828b778beca65529a59d4ac"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.1.0/filo-snake-linux-arm64.gz"
        sha256 "ecb650e1f926bd9ce186cf5a03ff87b5de96cd43f017316b405e48fce6b7a822"
      end
    end
  end

  def install
    resources.each do |r|
      r.stage { bin.install Dir["*"].first => r.name }
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filo-donut --version")
    assert_match version.to_s, shell_output("#{bin}/filo-down --version")
    assert_match version.to_s, shell_output("#{bin}/filo-fire --version")
    assert_match version.to_s, shell_output("#{bin}/filo-snake --version")
  end
end
