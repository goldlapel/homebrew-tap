class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc8/goldlapel-0.1.0-rc8-darwin-aarch64.tar.gz"
      sha256 "a3e4cad5e39a9fbd6740251d928479f258dc478c129584d2b21fca018e4a3a21"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc8/goldlapel-0.1.0-rc8-darwin-x86_64.tar.gz"
      sha256 "6d13e1e1c79a272311f380580e4dbbabc95462f5ae8d36856c080ea3e185532f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc8/goldlapel-0.1.0-rc8-linux-aarch64.tar.gz"
      sha256 "939579dd61b159cfaf67a84c1301eb108b5f326bdce2d6b7f15463ec6c61ae32"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc8/goldlapel-0.1.0-rc8-linux-x86_64.tar.gz"
      sha256 "8f946c005e987e1df18426f59f390e734dfa7992a2b9dc8fcc7d134ab8a75c2b"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
