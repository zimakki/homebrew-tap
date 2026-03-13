class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.11/inkwell_darwin_arm64"
      sha256 "01e7bcda2bb9def77dfb657c427622fb9f8545deef2d2634238bee2c8ee01491"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.11/inkwell_darwin_amd64"
      sha256 "a0b03bdbae68d647efa3c39db3e57708d50f6e440af92fe32e9dc81fc2afbe88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.11/inkwell_linux_amd64"
      sha256 "841d55e26370c38023f9e4817640c4f51b6c9bcb81ad17bcb6fb6107163cc7c1"
    end
  end

  def install
    bin.install Dir.glob("inkwell*").first => "inkwell"
  end

  test do
    output = shell_output("#{bin}/inkwell 2>&1", 1)
    assert_match "Usage:", output
  end
end
