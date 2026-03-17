class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-darwin-aarch64.tar.gz"
      sha256 "f2b53cfcf8bdf6198cb442336a98cfd098675188c93c3e4763f78873deb27898"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-darwin-x86_64.tar.gz"
      sha256 "994447e3dca15b12ca9333446fab91a66ecd849e65e162f0161b14bdcfbdf84d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-linux-aarch64.tar.gz"
      sha256 "3d3a3f9ecc8321fdd19325d7088ec29302869dd5db83acb7bc43f0c7534365fa"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc4/goldlapel-0.1.0-rc4-linux-x86_64.tar.gz"
      sha256 "94b4d728fbd26c9ccba439f5cfa804a6c28ef66e816edba5eed9e215def530b1"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
