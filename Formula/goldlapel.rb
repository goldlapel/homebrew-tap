class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc20"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc20/goldlapel-0.1.0-rc20-darwin-aarch64.tar.gz"
      sha256 "38fb9dff165121360750520078c4b325a7d56414357af0c1f71846a0c380a465"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc20/goldlapel-0.1.0-rc20-darwin-x86_64.tar.gz"
      sha256 "cd3f2ccce1726b7c1d4d19eac31610cc9bf1977b62ab0246e3a8e2bbdefbe65d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc20/goldlapel-0.1.0-rc20-linux-aarch64.tar.gz"
      sha256 "6681b62cfdaf5ed86bfba9f732fa304371fbd1c65046eefcc9184acd35cc264a"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc20/goldlapel-0.1.0-rc20-linux-x86_64.tar.gz"
      sha256 "2211649ac970c18ff0390495b66d2a580b2c78d405fb6af96bac28ddb6a51c61"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
