class Repolore < Formula
  desc "Local, offline operational memory for repositories, stored as Markdown"
  homepage "https://repolore.org"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.1/repolore-1.1.1-osx-arm64.tar.gz"
      sha256 "fa39a45488cf0e8dcbbd62c837b666ada0b7f313e95cb2bac8266cf09cd2fea8"
    end
    on_intel do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.1/repolore-1.1.1-osx-x64.tar.gz"
      sha256 "5d2368b774f7ad4c08cd2d3d9a7f9073d2b1234a26c752d9b16731c0b9eb2936"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.1/repolore-1.1.1-linux-arm64.tar.gz"
      sha256 "469dbd3bde06855a3c9e50b373957345732c78500c694b2c90fba6aac241fa24"
    end
    on_intel do
      url "https://github.com/R-Elias/repolore/releases/download/v1.1.1/repolore-1.1.1-linux-x64.tar.gz"
      sha256 "9f6d0273637af1956fbd4e509ec205b474da1291d90490a3eb1d4f506fad85b5"
    end
  end

  def install
    bin.install "repolore"
  end

  test do
    assert_match "RepoLore #{version}", shell_output("#{bin}/repolore version")
  end
end
