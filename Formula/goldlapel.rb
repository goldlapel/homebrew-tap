class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc18"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc18/goldlapel-0.1.0-rc18-darwin-aarch64.tar.gz"
      sha256 "2f2de82f1fae89a88049a51fd92ee4b3f33180deae308c29854a7489ecbca23a"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc18/goldlapel-0.1.0-rc18-darwin-x86_64.tar.gz"
      sha256 "94607acb88136a4c24cfbfe45613f63330d6e601575d4bee530a9e89791d17d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc18/goldlapel-0.1.0-rc18-linux-aarch64.tar.gz"
      sha256 "8b4ba66485408a5ea98a78bf69ca7a7cd8d898a1e60c364362e8295504d9aee3"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc18/goldlapel-0.1.0-rc18-linux-x86_64.tar.gz"
      sha256 "8135270a03c8e1df4e24b8dea9f6162fc8d10c1e820425915694d345be68e627"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
