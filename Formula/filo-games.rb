class FiloGames < Formula
  desc "Games and demos written in Filo, each its own program"
  homepage "https://github.com/crgimenes/filo-games"
  url "https://github.com/crgimenes/filo-games/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "2ffd748dacc69f9ceabae4f6202c6caf8893e282cbb269a99ceb6e88aadd3133"
  license "MIT"

  resource "filo-donut-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-donut-darwin-universal"
      sha256 "99e9cb857cb40b46cfd3be350cebecd08d1711f406b0b4cad14e3fc090a1bb6f"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-donut-linux-amd64.gz"
        sha256 "93e0a2a5237f46942af6156aa4c5c5e739ba4d137e7f2bd70e93649453805f34"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-donut-linux-arm64.gz"
        sha256 "0a22607056f8eea4db7716f0b3fd7d43d7f878ab6406ebdd3051c27a51c45228"
      end
    end
  end

  resource "filo-down-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-down-darwin-universal"
      sha256 "d52eb60a0ebe5df05280a03ead03ba6ef2dff657d06235d24df62da67c8ae482"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-down-linux-amd64.gz"
        sha256 "eeb5d4a79db2483afff8c62ec8e40f960fe7387cdd9158b2bf30ede880bd09ce"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-down-linux-arm64.gz"
        sha256 "82b51b0dc37951743d85441dc897eb2751d2025f014d594d7c779f950d03ea5c"
      end
    end
  end

  resource "filo-fire-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-fire-darwin-universal"
      sha256 "c0bf53bad563b755885745e2913cfa221c58c7f1eb1dc481c222388f54c1302c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-fire-linux-amd64.gz"
        sha256 "88b4aaa60fac04e1953da9631755138ecd9af9c5685de7432f5668e2c6751d88"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-fire-linux-arm64.gz"
        sha256 "427d75f1f7b38de621b2c2f6b96d4af75cbe68c0ea59098520ec40228ebc74d2"
      end
    end
  end

  resource "filo-life-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-life-darwin-universal"
      sha256 "9741fc8ad32d4538818118e2ceae0caffe184af34845e8171b4713529e40edca"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-life-linux-amd64.gz"
        sha256 "6a7375a23e732d3c6e3023d2cd4f6bb86f84daaf15c7ae017fc982ccc8b32964"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-life-linux-arm64.gz"
        sha256 "e6a57f4ccc747256101f8393f646f6ece8e8ff092527ac52a5a03f347a301386"
      end
    end
  end

  resource "filo-lights-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-lights-darwin-universal"
      sha256 "909b3ea56b7255ca97aa4d800326d7610ea90605394599fabc819066788370ef"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-lights-linux-amd64.gz"
        sha256 "0f76b69a591a8ee82478297f2efd4563a4b06101476d2101141c2faea2c7665d"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-lights-linux-arm64.gz"
        sha256 "0d18fa0582779b5689476f691b2c214d6683993299f0ce915faef258dba5ecc1"
      end
    end
  end

  resource "filo-mastermind-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mastermind-darwin-universal"
      sha256 "0d4e59126ea905bc4ed3c7a8ab71480abfb71adba514336fb83f506f2606d9ee"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mastermind-linux-amd64.gz"
        sha256 "82d30a9e242b55a967e6b97bbf434d9f11ffcb16883581f64faefd26d883a90f"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mastermind-linux-arm64.gz"
        sha256 "97af62fc7702dd8cc49b3dbbe10233aa6b3f3b9681c9df5bb11e49accfabfc1e"
      end
    end
  end

  resource "filo-matrix-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-matrix-darwin-universal"
      sha256 "c81dcfd582e22b0eaf3f813709b63f21ba408159d226117556c09896ac077d96"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-matrix-linux-amd64.gz"
        sha256 "f747fb8d0f2534fde1f82cb6bc0c9239458cb7405d6dbd5f65a7765466e56b17"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-matrix-linux-arm64.gz"
        sha256 "8a6baad2fa051bde6dedb6d118b1d0acfc2283d547faf68923577326d9cff901"
      end
    end
  end

  resource "filo-mines-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mines-darwin-universal"
      sha256 "0b0971b2d742cfd550d175d72ad528d8016cf8161ecdeb39a6b0371f0fab38a3"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mines-linux-amd64.gz"
        sha256 "bfc9d0ebfc4768d48ceaff81dfe73dc5e309cd11637a7fc19b83c2122bcb7fab"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-mines-linux-arm64.gz"
        sha256 "ac98b46d0a5e36915a67858782be77a9d04ba47d043072d4287bb995f5ec63ef"
      end
    end
  end

  resource "filo-snake-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-snake-darwin-universal"
      sha256 "b8b51b5aff13b6757e18cff4d1ef3e7829796e365918d9ec89953a38e1e11127"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-snake-linux-amd64.gz"
        sha256 "b684dbb029df1938be7bb7fb2ca6ad358cfa9357d8f471581e2abcc424fefa98"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-snake-linux-arm64.gz"
        sha256 "cdd28c068225d564fc8071b16e97a88c945803a8262cdec0162c75cb72834bf0"
      end
    end
  end

  resource "filo-sokoban-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-sokoban-darwin-universal"
      sha256 "874dbeb22415323931a6048afddee747f7ee30330e6de397e34feecb9d8b4cc9"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-sokoban-linux-amd64.gz"
        sha256 "7b2a3edeb75f340214b2afeec91648ce5943021545aa63f18bf46b402b803b0a"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-sokoban-linux-arm64.gz"
        sha256 "5d77750ef2013cf7623a65b243c586121d4a0ebdd238638595d48264bc2d3c5b"
      end
    end
  end

  resource "filo-stars-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-stars-darwin-universal"
      sha256 "fed1c0b6710c914f1b5b8fb65aead8455f47e0f9d19760e228be549d7797d3a5"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-stars-linux-amd64.gz"
        sha256 "7b154ae1f986475e488b48bf2228ebb7304f7636e299213f3b1c44e676c35fdc"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-stars-linux-arm64.gz"
        sha256 "c4ad5fbac1c3bd493d63b1be00db888c7fce8fda9dec88f7d79695ee2125f3d6"
      end
    end
  end

  resource "filo-tictactoe-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-tictactoe-darwin-universal"
      sha256 "66bdbc30776c131a851d83cd9bb75977bebe62ff6e4d9ebd1bd33fe470e63fdc"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-tictactoe-linux-amd64.gz"
        sha256 "ac5c6adcf45f9934e61a3738a864d8ae82d31930d3a69bd247797efc950eab06"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-tictactoe-linux-arm64.gz"
        sha256 "92d94d7e20451ac5c5194e4247b5dacd650d8f729010ffc0610e01b53b00c752"
      end
    end
  end

  resource "filo-twenty48-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-twenty48-darwin-universal"
      sha256 "ba92f7937416c556810cec365b8f28ec8e63c971a8c649e6b15fc791bd1d784c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-twenty48-linux-amd64.gz"
        sha256 "51f9382ded6da5d51a28f8280299cad9d20d01e0d28d0c23ea85efbe9fc98a09"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-twenty48-linux-arm64.gz"
        sha256 "f49e9b58b3c10ce093dfe71d42bdca8c7e04e9282bb3198816d6300c61059ae7"
      end
    end
  end

  resource "filo-wumpus-bin" do
    on_macos do
      url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-wumpus-darwin-universal"
      sha256 "d1ead9697ae02b6cc3eb056783a182412afff8420e5f8299490497b78556ad5c"
    end

    on_linux do
      on_intel do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-wumpus-linux-amd64.gz"
        sha256 "6833cb715f0c5ac7befe56d6ff47077dd17f629a7a8ca5adc19a6788cf159d6d"
      end

      on_arm do
        url "https://github.com/crgimenes/filo-games/releases/download/v0.0.2/filo-wumpus-linux-arm64.gz"
        sha256 "599a98e8ec57632edf9010c73f5f9dc461a71febf8000fa090e999e296fb4641"
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
