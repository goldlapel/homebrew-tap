class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc22"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc22/goldlapel-0.1.0-rc22-darwin-aarch64.tar.gz"
      sha256 "4fa8e1e2136b638541c0057fa380c6709b0fc8d99bbb49cc6d73e6920942f32b"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc22/goldlapel-0.1.0-rc22-darwin-x86_64.tar.gz"
      sha256 "d8caca480f30e802daf9dbbee1d70f9ee6675d7415978d5089e0a2f0d5817d37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc22/goldlapel-0.1.0-rc22-linux-aarch64.tar.gz"
      sha256 "530380f413ece02d465c88186f56edc42186a0169ca855c1f2f90962e0877f03"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc22/goldlapel-0.1.0-rc22-linux-x86_64.tar.gz"
      sha256 "b6618dc79c653c5a85c21f51080751fcbb908b49708b7d099ffba1b371068703"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
