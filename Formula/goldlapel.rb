class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc19"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc19/goldlapel-0.1.0-rc19-darwin-aarch64.tar.gz"
      sha256 "785ed42abb499653da8ab94a2a2fd4227a60a3edc6aca98ee8337d1d5af8f768"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc19/goldlapel-0.1.0-rc19-darwin-x86_64.tar.gz"
      sha256 "40683d4bae5d100fb813a738eeb5cc0b1a4bb15cc9147faf59fb27c76b82d018"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc19/goldlapel-0.1.0-rc19-linux-aarch64.tar.gz"
      sha256 "214d97e4c7e2609ed9cd281d937e9416f195cd43e673fb8b2e895d2df7b359d0"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc19/goldlapel-0.1.0-rc19-linux-x86_64.tar.gz"
      sha256 "4e130fa1545760071003e60bd0608ce27cfbadde5ed4d972904ea5eb5eb96602"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
