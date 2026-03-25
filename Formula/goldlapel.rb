class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc9/goldlapel-0.1.0-rc9-darwin-aarch64.tar.gz"
      sha256 "4f1683a5c033b2b5edad210b573ceb5baaf060297a7e70b1022cb7049b5ed5c4"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc9/goldlapel-0.1.0-rc9-darwin-x86_64.tar.gz"
      sha256 "c2f5a4f47f3959da2f946f85913057cc90e1c02cd0a4973d4b98e7646cc5127f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc9/goldlapel-0.1.0-rc9-linux-aarch64.tar.gz"
      sha256 "07f7d4a624853fd1f212fb9c9023b3dd70182d8ef8d6346f3c031ef96f648b89"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc9/goldlapel-0.1.0-rc9-linux-x86_64.tar.gz"
      sha256 "8d307d7ea21fa368464484478cedcaa3c8d80c829b37c489a8d5a5cae936c91a"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
