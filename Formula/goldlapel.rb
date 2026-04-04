class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc15/goldlapel-0.1.0-rc15-darwin-aarch64.tar.gz"
      sha256 "797c53e3a4c8bfc635e37e9532cd6659428d4bcba481cef2bfa9aca7a96ed73f"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc15/goldlapel-0.1.0-rc15-darwin-x86_64.tar.gz"
      sha256 "bc75418278fcc3f78cc8e696d3a2cd97f58094a8cae256ab97d129b30d43e94f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc15/goldlapel-0.1.0-rc15-linux-aarch64.tar.gz"
      sha256 "4f56d0bc415f73393f6491695f2027932c5fbac483a200f6f88167325e0ca376"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc15/goldlapel-0.1.0-rc15-linux-x86_64.tar.gz"
      sha256 "79d1014f1683c693f8ed8dc769cbe86681485d6b468f8b714975a27f6a7e30fd"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
