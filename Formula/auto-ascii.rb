class AutoAscii < Formula
  desc "Realtime ASCII-art video in your terminal"
  homepage "https://github.com/andmckay01/auto-ascii"
  version "0.4.0"
  license "MIT"

  bottle do
    root_url "https://github.com/andmckay01/auto-ascii/releases/download/v0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "a8c727c93586c049173a66e05166a458523229d1bc982369b8a05fbb35281f09"
    sha256 cellar: :any_skip_relocation, big_sur:       "15fc93549b311ae118c8e9290d44f349a6d1d880934f0186651bdd89a3a9b8c3"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c86d620b284738ac0211ce4da75588bfb98cea5822d55de11d9e0f758d7a5ab4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ec04fd8ed0bf1f311ac38e69c987da9ac95dcb6ed6c753c02d4bd39fc4ee06a6"
  end

  on_macos do
    on_arm do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.4.0/auto-ascii-aarch64-apple-darwin.tar.gz"
      sha256 "3b9abf7847ef8b864fbc4e200e3aa9046ba14342a8c01427c82c5c31fc0bee77"
    end
    on_intel do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.4.0/auto-ascii-x86_64-apple-darwin.tar.gz"
      sha256 "57f9d2ea040e4d1c78c039823b82277a6818aad48b11e6b307339599cced7066"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.4.0/auto-ascii-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33053cf3c0a4621256e690dd00482ae7fa2c210eef69d617e627fe7695520b81"
    end
    on_intel do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.4.0/auto-ascii-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18d0397f4247266cd5ca2ca14148c7d369d8e4d5d7e628ef27a88001d1711fa0"
    end
  end

  def install
    bin.install "auto-ascii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-ascii --version")
  end
end
