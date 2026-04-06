class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc17"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc17/goldlapel-0.1.0-rc17-darwin-aarch64.tar.gz"
      sha256 "b7826e602ce042f291f90358c89066c96018019ef6818bde791633e6e174d6f7"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc17/goldlapel-0.1.0-rc17-darwin-x86_64.tar.gz"
      sha256 "f73c1ab4e04fd592ce9fac654648c9d1c6a8208b690a3abd27746e55aeccfb5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc17/goldlapel-0.1.0-rc17-linux-aarch64.tar.gz"
      sha256 "441634f36e7f5949fa7227c19472d8be659652f208aa1844cca696181033988c"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc17/goldlapel-0.1.0-rc17-linux-x86_64.tar.gz"
      sha256 "6a523f337d5f07fe456bf6dd1d0c1d01e55492eb8862c2d5dad919cea4b955b4"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
