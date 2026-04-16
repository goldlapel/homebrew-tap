class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc25"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc25/goldlapel-0.1.0-rc25-darwin-aarch64.tar.gz"
      sha256 "69ed19c8976a6d1e7fca7b6ef7b027365f4e86f91999342f67286a0c0471e54d"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc25/goldlapel-0.1.0-rc25-darwin-x86_64.tar.gz"
      sha256 "ab838e63b81d1b83cafa56e8816ae3227105588a4322e12d9f77cf028614b2e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc25/goldlapel-0.1.0-rc25-linux-aarch64.tar.gz"
      sha256 "520f12366067fe9ae6f3c482ab8467ae43fb7efa6bd56601b459eb856006c34b"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc25/goldlapel-0.1.0-rc25-linux-x86_64.tar.gz"
      sha256 "84d95e66e273a348454cfcd2e4ceb26d2e243c4f3b15c00cbce9f57bb2199002"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
