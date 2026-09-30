class AutoAscii < Formula
  desc "Realtime ASCII-art video in your terminal"
  homepage "https://github.com/andmckay01/auto-ascii"
  version "0.3.0"
  license "MIT"

  bottle do
    root_url "https://github.com/andmckay01/auto-ascii/releases/download/v0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "9e4592a3c0b18a729fbcadc1fbb30746fbed56408657be6ecbd169a1c4492b05"
    sha256 cellar: :any_skip_relocation, big_sur:       "8198bd2e6cbd9ff5612eeba4abeceb3f87b9af42c1b4a04f893971850589ce6a"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8ae72552e2dd715970562414b03bbcac2b2f253e8ce5c6f8528c0d82bee84665"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6b4ad0a2e169f311ba0730121b04427b9b53df27c34973ee7f5aedcac2568894"
  end

  on_macos do
    on_arm do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.3.0/auto-ascii-aarch64-apple-darwin.tar.gz"
      sha256 "6dfd9eacf5da69349d431e586427adf12d094da90243e87d988fca97a4703abf"
    end
    on_intel do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.3.0/auto-ascii-x86_64-apple-darwin.tar.gz"
      sha256 "8ae38b006e0f6feb49421f7c668bcaa6315496f1681fe14722edb7851de479ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.3.0/auto-ascii-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88f3d754274421765114d1f7ecd38358dde710b5911c43edf85d14705e2cf1b0"
    end
    on_intel do
      url "https://github.com/andmckay01/auto-ascii/releases/download/v0.3.0/auto-ascii-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3bdfb1fb8ada854427ad23edd67f83df0748193978ee0321fdcbf2cd26cafe1"
    end
  end

  def install
    bin.install "auto-ascii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-ascii --version")
  end
end
