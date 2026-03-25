class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc12"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc12/goldlapel-0.1.0-rc12-darwin-aarch64.tar.gz"
      sha256 "2953d1932766d65aca959e7186bd2527ce2878c6833c9695a65ae8380a321950"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc12/goldlapel-0.1.0-rc12-darwin-x86_64.tar.gz"
      sha256 "c4c5c3de5c297627483f56c1ba2895dd56a2c9504ba05c7e7aa7a48772a9a34f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc12/goldlapel-0.1.0-rc12-linux-aarch64.tar.gz"
      sha256 "17c77ba2653cde5c82e38c6c4c17d32a5193c628ea4f8b54bae1c3b844d1e7a9"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc12/goldlapel-0.1.0-rc12-linux-x86_64.tar.gz"
      sha256 "2aa1c4d39939535c5b20048198a1f4ffef24abdcc7665e9f0a74c20b6d1f8586"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
