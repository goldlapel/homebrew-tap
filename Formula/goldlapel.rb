class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc7/goldlapel-0.1.0-rc7-darwin-aarch64.tar.gz"
      sha256 "7470c929f28d13a92f9fd5429a2dca079630f77624b0de7ef2d60aa46dc5107b"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc7/goldlapel-0.1.0-rc7-darwin-x86_64.tar.gz"
      sha256 "3d8294c894ce1cb33bab7396f0bd1466ab59aaecea914c6524cd87568d692062"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc7/goldlapel-0.1.0-rc7-linux-aarch64.tar.gz"
      sha256 "304d9d2bdbcd1d19c30719308eba9cf9596c8faa4b5551abbb0477d313d47f73"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc7/goldlapel-0.1.0-rc7-linux-x86_64.tar.gz"
      sha256 "696a58755dc6fc21966fb613f9685187c8c984dc05865a712015e28170708524"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
