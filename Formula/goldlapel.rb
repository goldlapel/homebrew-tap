class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-darwin-aarch64.tar.gz"
      sha256 "2d6156a33a119801138cdb4a37407e44dedd08dad4ecfc46414efb31f3797e87"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-darwin-x86_64.tar.gz"
      sha256 "51df95c6a73edd2c2fb7f275ce8f660e423ed046f7f08cc51031d0ba0db0d674"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-linux-aarch64.tar.gz"
      sha256 "d83bd653c16baa8a5810f6f722b217248a0821a740ac5a9644b5a459bffa29f5"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-linux-x86_64.tar.gz"
      sha256 "d3ba994385892e3fbce4773bcd45b14578d5a0fc555efb7fb1f8229cd759b2e2"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
