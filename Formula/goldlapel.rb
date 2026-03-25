class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-darwin-aarch64.tar.gz"
      sha256 "a623e945d06b3ce3d7a9079f52178560f78c69ce46e0ca79cfbf1c86f7a8c53d"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-darwin-x86_64.tar.gz"
      sha256 "0771038047d0dd55695d9bc0c7af84d2fe29fe8940d768957f1b0fba2d9bfe4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-linux-aarch64.tar.gz"
      sha256 "7bf2166b5ca1bf51f876732762fc0b68d7673e684961d0166fbba8d30a67bcea"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc10/goldlapel-0.1.0-rc10-linux-x86_64.tar.gz"
      sha256 "b9f190886ed9a893052c4e5b8783a66f495c71863d716c3d17376da59db52e3d"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
