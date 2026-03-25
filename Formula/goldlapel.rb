class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-darwin-aarch64.tar.gz"
      sha256 "d1411fb52902c0a425661bcad68a622f311120723621672afee48b9e4756a2d0"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-darwin-x86_64.tar.gz"
      sha256 "0e14d761a4de134c6efaa18cdac5352c98f395156b08e3547b59ceaf81089cdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-linux-aarch64.tar.gz"
      sha256 "4d3c7ddce2d22d610c904e8f5b957b03f02965f23ae92c9a45d7d22283d6132b"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-linux-x86_64.tar.gz"
      sha256 "dd8ff9c3111d769eaf08d83041072f126d35fc2c2076ac0ddb8355424f0f4993"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
