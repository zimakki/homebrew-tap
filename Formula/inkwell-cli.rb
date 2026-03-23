class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.20"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.20/inkwell_darwin_arm64"
      sha256 "164f7d10772da9ff8c61d1cb47b6490879c8e8129d3b2508dd663f269ab32009"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.20/inkwell_darwin_amd64"
      sha256 "1f04fcdf8a9f13dce4169b3740fc749680000669fce78497e342e362cb5363ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.20/inkwell_linux_amd64"
      sha256 "bf63db59d0e7b3678050db2b62b0fbb9aee806cd8cd951968c45c41c9ad618ee"
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
