class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc5/goldlapel-0.1.0-rc5-darwin-aarch64.tar.gz"
      sha256 "aa5a296d21b171c774b8aa611d24e3a15c2845d97c81cc857eb84ffff4a644db"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc5/goldlapel-0.1.0-rc5-darwin-x86_64.tar.gz"
      sha256 "8f6bbf35bc3f9db0ba734117a1b1da619e0681a6f79045b0f7fb2a68bc9da46c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc5/goldlapel-0.1.0-rc5-linux-aarch64.tar.gz"
      sha256 "16729afb0832178b281155cd6636b89416e9049508f336c0c7c44c0fe3942d65"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc5/goldlapel-0.1.0-rc5-linux-x86_64.tar.gz"
      sha256 "53a8b6b245452f099ebcb75dea0f3f9c4233ffe7a8ba396e30e5eb361029417c"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
