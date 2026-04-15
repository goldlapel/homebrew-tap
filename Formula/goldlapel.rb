class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc24"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc24/goldlapel-0.1.0-rc24-darwin-aarch64.tar.gz"
      sha256 "30c410a5a61d333f60e800bee3bb1c50b3eadb7d7f2c4c1015f1440ab8bf2955"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc24/goldlapel-0.1.0-rc24-darwin-x86_64.tar.gz"
      sha256 "5ef47939a5303177fa59b674267c32d1aefeef8ddbfc8364b40f6f23fc6f7468"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc24/goldlapel-0.1.0-rc24-linux-aarch64.tar.gz"
      sha256 "d63e735c8336ce98e717f434d45c797ed24f3f534c858469759179fdd87e17da"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc24/goldlapel-0.1.0-rc24-linux-x86_64.tar.gz"
      sha256 "fd82eb97cf7f06c5d6d7fb61b3ca633cf4ea2ac1178842a841241f1b7bfbcc80"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
