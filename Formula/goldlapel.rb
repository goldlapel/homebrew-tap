class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc14/goldlapel-0.1.0-rc14-darwin-aarch64.tar.gz"
      sha256 "7781f3cafff10c1b7134d0fc2c6a5dd3ffdde522f1adac5ef910912b42013c76"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc14/goldlapel-0.1.0-rc14-darwin-x86_64.tar.gz"
      sha256 "8a7e38469f09e01caa0bcb57a7fca9cdc5693c719d3ad8624b0737eee277705c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc14/goldlapel-0.1.0-rc14-linux-aarch64.tar.gz"
      sha256 "2c60698eac3ce283f0c825c036790a92fe423f3c549efce47f18f03e92adab53"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc14/goldlapel-0.1.0-rc14-linux-x86_64.tar.gz"
      sha256 "35d95cd5c8b97aa7b86fb64e7db15a0f553f69e1cd4891eebc4cb73f0a344fa6"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
