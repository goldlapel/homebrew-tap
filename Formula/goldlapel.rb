class Goldlapel < Formula
  desc "Self-optimizing Postgres proxy"
  homepage "https://goldlapel.com"
  version "0.1.0-rc6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc6/goldlapel-0.1.0-rc6-darwin-aarch64.tar.gz"
      sha256 "6feabd6512e551d0231f1836f751308a840024935c79f38c5eacdf9ec61c0034"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc6/goldlapel-0.1.0-rc6-darwin-x86_64.tar.gz"
      sha256 "141b80eaff5d68536b7477b0db24e152e5e6b793d1c1cc12b08935a9f605bdd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc6/goldlapel-0.1.0-rc6-linux-aarch64.tar.gz"
      sha256 "7318bc0966a6dee22ba548cf752209e2fb346c78bb646f9dfcc1ffb54b658d19"
    elsif Hardware::CPU.intel?
      url "https://github.com/goldlapel/releases/releases/download/v0.1.0-rc6/goldlapel-0.1.0-rc6-linux-x86_64.tar.gz"
      sha256 "e44a08dead7359ad9b226c4de6c548534023d14a9d17cab6b316a2cd5810b36d"
    end
  end

  def install
    bin.install "goldlapel"
  end

  test do
    system "#{bin}/goldlapel", "--help"
  end
end
