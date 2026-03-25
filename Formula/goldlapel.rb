class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc11/goldlapel-0.1.0-rc11-darwin-aarch64.tar.gz"
      sha256 "6efc135753d05d2a93ec30573da5a6a23c91b6d4e4d0f46908de659cc3c59ef9"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc11/goldlapel-0.1.0-rc11-darwin-x86_64.tar.gz"
      sha256 "1248f30ebbeb912f64c95be6599390ad378a17ae8b3c56b2288fe9db278c1702"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc11/goldlapel-0.1.0-rc11-linux-aarch64.tar.gz"
      sha256 "f7f1b4db837342e63f251a514b0e69217b7a9d4f9ad7e1b5122dab1599095b7c"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc11/goldlapel-0.1.0-rc11-linux-x86_64.tar.gz"
      sha256 "b2c93276c0bc5762529ab0eca21e475f80db3823330eb6b0f6a40c36d12efd4a"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
