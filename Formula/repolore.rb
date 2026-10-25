class Repolore < Formula
  desc "Local, offline operational memory for repositories, stored as Markdown"
  homepage "https://repolore.org"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.0/repolore-1.1.0-osx-arm64.tar.gz"
      sha256 "636dec35ee63e19cd19a3e2812b3269ed7fe9fa3e8a3c53d5898e460a9859db9"
    end
    on_intel do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.0/repolore-1.1.0-osx-x64.tar.gz"
      sha256 "e3fd09469248a180caca356db0041b798c3f6fcf4e9df9569c84d4f3be8e3a51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.0/repolore-1.1.0-linux-arm64.tar.gz"
      sha256 "446458e2ed1f2cf4fe8e5a6df7b2d479fd13a8b528c5a495ce2eab1a9e10f747"
    end
    on_intel do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.0/repolore-1.1.0-linux-x64.tar.gz"
      sha256 "c2160a80026a33b736c371e00969696ceb5cc65ca13bc6f7eb81e85b8f762721"
    end
  end

  def install
    bin.install "repolore"
  end

  test do
    assert_match "RepoLore #{version}", shell_output("#{bin}/repolore version")
  end
end
