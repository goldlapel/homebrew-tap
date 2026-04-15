class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc21/goldlapel-0.1.0-rc21-darwin-aarch64.tar.gz"
      sha256 "45e684ea9e69ecdae57cf1321718d3287d61e2d55e80227c65d41f5ba8c03515"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc21/goldlapel-0.1.0-rc21-darwin-x86_64.tar.gz"
      sha256 "9ad5aff461b6838538ba9a8c4cac8191f515e02b7a9eff289116135baddbb645"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc21/goldlapel-0.1.0-rc21-linux-aarch64.tar.gz"
      sha256 "ab3014c62f83a5e9119904c9306dcafeb788f8848075cd53422ff327971d00bc"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc21/goldlapel-0.1.0-rc21-linux-x86_64.tar.gz"
      sha256 "bc84e291dc67511a18181e516e6d84c2827056ae034ddf89060f63299349e3e3"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
