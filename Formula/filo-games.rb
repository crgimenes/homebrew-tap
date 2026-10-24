class FiloGames < Formula
  desc "Games and demos written in Filo, each its own program"
  homepage "https://github.com/crgimenes/filo-games"
  url "https://github.com/crgimenes/filo-games/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7f8254ae7232a619cfb06b2209e04b981c3a5d9efa5c2822ee45035d3ea3e51d"
  license "MIT"

  resource "filo-donut-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-donut-darwin-universal"
      sha256 "7859e97443fcee32c5a2430c466340748b043376ff773f2cbaf29742aea7f077"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-donut-linux-amd64.gz"
        sha256 "963338e3b315a85bf58af23dc4ef719d0854d2224272a6f3621f530c37daf5f1"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-donut-linux-arm64.gz"
        sha256 "f2703f928e0d7583e493b9662d40d75f3d63ddc63720248abaaf1738ea5808e9"
      end
    end
  end

  resource "filo-down-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-down-darwin-universal"
      sha256 "665c6db80a28d70a7677273dc0beb20b31859208e54f8acbb4cd9d132a52cea5"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-down-linux-amd64.gz"
        sha256 "6a60719ac8f21dade61ac9a39517eb27eb4d75921dd4031c663c31b799c46201"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-down-linux-arm64.gz"
        sha256 "9c09e449b17c3e72418c2a21aaf439f23cc7e7793f4087a3e2c2d769ba9c1551"
      end
    end
  end

  resource "filo-fire-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-fire-darwin-universal"
      sha256 "8703ef7433aed1d69248bf4bb6c9965d9296545890b999108772f0938cbe9cb8"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-fire-linux-amd64.gz"
        sha256 "211a9b8fae44563610188fcfd9d79b7401f6623eea675d081e6ecd708f83aa3d"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-fire-linux-arm64.gz"
        sha256 "a99b2ef3dfebe74caf293e46187f6f16e15b3ac0cea9b3143a7bac60c3e26df4"
      end
    end
  end

  resource "filo-life-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-life-darwin-universal"
      sha256 "dbfe852a7546d0be1dad076de4526fddd80cfcdab3c9f50ac96fa63edf0405ee"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-life-linux-amd64.gz"
        sha256 "44525146763f76c88272769b5f4d8223554a1bc84aa98bba33f641d10a7aa1d6"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-life-linux-arm64.gz"
        sha256 "64317f837d53ab88235123a165773d789632bdd2aacf9f36bb079f36952fad7b"
      end
    end
  end

  resource "filo-lights-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-lights-darwin-universal"
      sha256 "17e258bd7af52bb1fccee0f1c7945cce9d8a9b4551264df60706a529ca526482"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-lights-linux-amd64.gz"
        sha256 "84a21e168bde7a9097fcfe133bd124bd8a4f2dce3ff906eff9790fed442fe7c7"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-lights-linux-arm64.gz"
        sha256 "017aa19055fbc0ecf8fa01513618d04b91af08167ec97e2903319f861cb04ffc"
      end
    end
  end

  resource "filo-mastermind-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-mastermind-darwin-universal"
      sha256 "4a154ce4ac87414c17d2cec116d426cced38c9602bbb516819954a3a921d34c0"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-mastermind-linux-amd64.gz"
        sha256 "ad4c89e3d15f3c0c2453418ea33549a31893e04cc71d08cb280724b32e40dbae"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-mastermind-linux-arm64.gz"
        sha256 "bd0e460ebaec169e2f6f2fb302b55bd4ad453e556f8e9eb5a39138f78f6e8a16"
      end
    end
  end

  resource "filo-matrix-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-matrix-darwin-universal"
      sha256 "56c1b56826de0e40826ef12e1105c5deaf28d6d48f72acfa828d71c2716cc0fe"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-matrix-linux-amd64.gz"
        sha256 "42b75ce4bcbcf39d83be42d6e18f1a6712ca85f7708f6722134b5ced4a85294f"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-matrix-linux-arm64.gz"
        sha256 "9c266387e40a8e3b49b97d8a46b76f84423fc77b60f4459a592dad226c030c34"
      end
    end
  end

  resource "filo-mines-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-mines-darwin-universal"
      sha256 "983bf813c6afc7c501576e506005913f29b705d204c448b64a91e46bb57cbd14"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-mines-linux-amd64.gz"
        sha256 "8ddab5311482fc28cca6e3e6711371a8e3334b05105d281ef3763be51a2e4ffa"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-mines-linux-arm64.gz"
        sha256 "635c3e7292a4694a1fd91065f1460acd1fd16828ab247a280ac9ce858d4751b4"
      end
    end
  end

  resource "filo-snake-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-snake-darwin-universal"
      sha256 "e685d707a692f88eff5d35468cbcbcfc09605642337ad98eed073bcf80c16a84"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-snake-linux-amd64.gz"
        sha256 "baa7f66f24071144204c413013969e67bfaec2a2339ca9bda9fbaaa91cbd1a0c"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-snake-linux-arm64.gz"
        sha256 "e4a86233b3e42c5367fc01d6a84de78da9f22b4a7baebd84671378f6bcddbd44"
      end
    end
  end

  resource "filo-sokoban-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-sokoban-darwin-universal"
      sha256 "89c8b0a4237e1b3560cf28acd734e26e0d502d30250da817909dc265f985a192"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-sokoban-linux-amd64.gz"
        sha256 "7497bc132e2a805cc59a3efa13d6e9820f0288243daec2749257a0131329b8d5"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-sokoban-linux-arm64.gz"
        sha256 "28f57df1832d3dabdb78e412efba36492d52ab1a0d3862b56b1425130bb0c09f"
      end
    end
  end

  resource "filo-stars-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-stars-darwin-universal"
      sha256 "19ac6cdd7f057eada639d7e5801f3a95db78491519cdfbd737aee77dc8a75569"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-stars-linux-amd64.gz"
        sha256 "e91cecacfddbe9d90f71c967b42cbb313a604c565f0c7c4a606838f994aa51cd"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-stars-linux-arm64.gz"
        sha256 "8b963a6c920fb827c1aed4fc640f940c6219ba27fd2432d793f0aa81fa584ed8"
      end
    end
  end

  resource "filo-tictactoe-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-tictactoe-darwin-universal"
      sha256 "923d44ca6e42172df4c9ab28bf478302391dbcfdb7f6e0318cd9762d1094209c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-tictactoe-linux-amd64.gz"
        sha256 "b9c92949bd90368e94b850322ad671cfd967c169aa63b5bf10df00bdf2b1319e"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-tictactoe-linux-arm64.gz"
        sha256 "73ffccdba39a4fa86cf043ad5dfb78c9d3708e5d213d61a5b167277e6e671e90"
      end
    end
  end

  resource "filo-twenty48-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-twenty48-darwin-universal"
      sha256 "1aca96702600ceb4663fa8a1ab322f028f9b59cd4a85b6f6d2c1539345692c15"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-twenty48-linux-amd64.gz"
        sha256 "ab3ba53b97199580910cc7bdba718633dc7e15cbc8a3d96cda1ae804220334bb"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-twenty48-linux-arm64.gz"
        sha256 "822ce3adeac8ed0eae0a8b2df6fb4d7557ee41f3a561a20c48792168a56e4ef7"
      end
    end
  end

  resource "filo-wumpus-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-wumpus-darwin-universal"
      sha256 "55349b376189f60834fb5f3bdd73b257451eedc6dade760f5f6196e892605def"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-wumpus-linux-amd64.gz"
        sha256 "6831a1ce18da8820bb3e9cc6ceb8b31419163d60d5244b5a272c7c7af221a265"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.2.0/filo-wumpus-linux-arm64.gz"
        sha256 "bb0edf7cc0362c438b4c422e4630ba6b1c49507fb6529023f4255ed12dcc1f42"
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
