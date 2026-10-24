class FiloGames < Formula
  desc "Games and demos written in Filo, each its own program"
  homepage "https://github.com/crgimenes/filo-games"
  url "https://github.com/crgimenes/filo-games/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "2ffd748dacc69f9ceabae4f6202c6caf8893e282cbb269a99ceb6e88aadd3133"
  license "MIT"

  resource "filo-donut-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-donut-darwin-universal"
      sha256 "f78966f0918fd580fc44fa4e321596edc3ab20991b28c09a9800e51b3674fc71"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-donut-linux-amd64.gz"
        sha256 "25f20f4a8d7bda7874e11d958e7eef69d4adce9d6383436f283d8cb99804929b"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-donut-linux-arm64.gz"
        sha256 "92eb27dcd82d6742ee6f2154c63f58084a113ff67a5645db2dd2d61de42be3dc"
      end
    end
  end

  resource "filo-down-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-down-darwin-universal"
      sha256 "ed8df1ed9ad1656cc1f8770a6fcccca43bf4a07c34016ad7c3ef3c5b3f123f84"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-down-linux-amd64.gz"
        sha256 "c8e45d281b8658f9ed710308d0de5d6305ffbf746be1f41766e3af624878768a"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-down-linux-arm64.gz"
        sha256 "356d2bf9ce7b531044c1158576e125ff184c13e26818e943c7bf0144f201cdce"
      end
    end
  end

  resource "filo-fire-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-fire-darwin-universal"
      sha256 "38eab6817130cf2e39c17d9d086274817c1bab8decb93ece6bd3f704eeee2a70"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-fire-linux-amd64.gz"
        sha256 "df5723c9c945c5f44a64bda675727283bf1ff48c1d991c60981eec3499a22635"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-fire-linux-arm64.gz"
        sha256 "06cf3412cde0ec6dc27e6eb38e61ac94817e147a58ece03c1f1bceed6e71dcd0"
      end
    end
  end

  resource "filo-life-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-life-darwin-universal"
      sha256 "b5f965665d68d53d0c88502b9c42b3f8d4463f3e0e11fd0fa8a0ac11b84fcf67"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-life-linux-amd64.gz"
        sha256 "81d1398e922955a701037f61fca561731c9e8c93ea7962f8b07109095195e617"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-life-linux-arm64.gz"
        sha256 "78cc675e79c6317a8316c83132d68163fd6973d16681e26762ffe37b543d5b1b"
      end
    end
  end

  resource "filo-lights-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-lights-darwin-universal"
      sha256 "8bca2ba750cfdf66504b55fbf185939dc32a4a6c9e51a859ac3a456fa481a001"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-lights-linux-amd64.gz"
        sha256 "564eaf2fcd97f221a234d64d6929365299150d5817847b68e5ee6bad01385cff"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-lights-linux-arm64.gz"
        sha256 "6521b07c3f577666dbe074186c7ba821cf3a91d8ffe9896add7f3d6a5c310d56"
      end
    end
  end

  resource "filo-mastermind-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mastermind-darwin-universal"
      sha256 "2878412a43a5090febe46fddbc831a67135f939127d668232e3ccf401b894691"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mastermind-linux-amd64.gz"
        sha256 "34d156c2c46300588b33765511c7d4b30c41c3d3e722814e0824b5bfeb1176fe"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mastermind-linux-arm64.gz"
        sha256 "ada07ebe2d5ed5730422f7f4cb9a67b4cbf55c6036ff7a7df862ffec4846158c"
      end
    end
  end

  resource "filo-matrix-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-matrix-darwin-universal"
      sha256 "96b14bbec16bb3fb1e24a93b384310c9aacc8d02157392835f1f58df20495f9d"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-matrix-linux-amd64.gz"
        sha256 "aaffcdb26819446fd882ba905c4a12c1ed84817bf62754480fd137c6630a6a0d"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-matrix-linux-arm64.gz"
        sha256 "53c7721b993d76a1fbc161dd69278a8bd5a18a559f859eaec3e3ddd8a4769598"
      end
    end
  end

  resource "filo-mines-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mines-darwin-universal"
      sha256 "f602e203dbf0320c069c845bb731e8601185fcdc1f677a8969e6515cbcd05147"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mines-linux-amd64.gz"
        sha256 "fc260063450e72a7717618cccea8968db5a6ab780917dc3c8b434a0c31fc852a"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mines-linux-arm64.gz"
        sha256 "e776ea883435e5a9d5faace3e257524106bd22745cab1a34d1282b7df4393f4b"
      end
    end
  end

  resource "filo-snake-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-snake-darwin-universal"
      sha256 "6c52a49325daca4c59ff7cf8a8c8a6f06ea17163e0a6fb8fbe8365e9d792b160"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-snake-linux-amd64.gz"
        sha256 "9650de71bc0fc23a73443c9f1b9522dfc09db7db0e3d35355a460e2235a6af88"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-snake-linux-arm64.gz"
        sha256 "f6a6b35554b78a6ecf82f429d3106a46d258bcc4c6d03f3c339119e1f23ef85b"
      end
    end
  end

  resource "filo-sokoban-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-sokoban-darwin-universal"
      sha256 "89373f5a628d61dd4a8252355f421d4155c9c9d67db37d26222177b78f86b2cb"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-sokoban-linux-amd64.gz"
        sha256 "5ef11f984eb18793200614864269d47c8b9c50adf69e2f26cedc24fe4d5967c7"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-sokoban-linux-arm64.gz"
        sha256 "5c2077eaa8c087a2e00873be4ee0665cc81f9d462874b13b7bbd05a19312c6fb"
      end
    end
  end

  resource "filo-stars-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-stars-darwin-universal"
      sha256 "a9131ec78b40d7862027a70bb98f249b2bcb06ca075790bab5ea3d61015ed813"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-stars-linux-amd64.gz"
        sha256 "d2931cfeaf1fd50f2b0e2e18d03e5d5bbf666a5e2be70b1800b5c3397451c875"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-stars-linux-arm64.gz"
        sha256 "0a8a9a11b7d07842d1820b25fb9e35b9a0a4d9771d78ff3de13cd6219c523038"
      end
    end
  end

  resource "filo-tictactoe-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-tictactoe-darwin-universal"
      sha256 "4870ff1cfdca7ad4cdf975287c2d08aa3ee2f62bc5ce22d85be423ca3424a0f8"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-tictactoe-linux-amd64.gz"
        sha256 "f87bf915f43f2d31cd93788190d8d5d1a9f2d70100694ae27d585d4917def8f9"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-tictactoe-linux-arm64.gz"
        sha256 "003595e65b97bc6de7a5bcd7b8d00dbd090197431a6696beffd42ceef2744334"
      end
    end
  end

  resource "filo-twenty48-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-twenty48-darwin-universal"
      sha256 "24bb0881d3864629bf435b585cb85d6332e92fa59e60f67850e985fe78ebb81d"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-twenty48-linux-amd64.gz"
        sha256 "643d98acd1abdb00a1ab6ce4c2d7e53dc5b84014a289adfc6aa30357780bbba8"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-twenty48-linux-arm64.gz"
        sha256 "44470a531482a631720996a7f33fc70ccb94590460e7465799c4a225e5792dcb"
      end
    end
  end

  resource "filo-wumpus-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-wumpus-darwin-universal"
      sha256 "3d827e52a28b5c37cf6ab9a9cd69ecd7ea01975bea853fdbf59c938cd61bc339"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-wumpus-linux-amd64.gz"
        sha256 "b2479e2a1509ce748427063dbc31f2a3b24e92c93013c013262cf57c0d1e8b2b"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-wumpus-linux-arm64.gz"
        sha256 "31b18812d58b80bfc76309de1ee48b3329434b55d3f3c73181f8a7d487d037bf"
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
    assert_match version.to_s, shell_output("#{bin}/filo-life --version")
    assert_match version.to_s, shell_output("#{bin}/filo-lights --version")
    assert_match version.to_s, shell_output("#{bin}/filo-mastermind --version")
    assert_match version.to_s, shell_output("#{bin}/filo-matrix --version")
    assert_match version.to_s, shell_output("#{bin}/filo-mines --version")
    assert_match version.to_s, shell_output("#{bin}/filo-snake --version")
    assert_match version.to_s, shell_output("#{bin}/filo-sokoban --version")
    assert_match version.to_s, shell_output("#{bin}/filo-stars --version")
    assert_match version.to_s, shell_output("#{bin}/filo-tictactoe --version")
    assert_match version.to_s, shell_output("#{bin}/filo-twenty48 --version")
    assert_match version.to_s, shell_output("#{bin}/filo-wumpus --version")
  end
end
