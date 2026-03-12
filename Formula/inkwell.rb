class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.3/inkwell_darwin_arm64"
      sha256 "551c1251f193e4df76e108924a7f95642c98e32bbd8391bfb0c8f34323365852"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.3/inkwell_darwin_amd64"
      sha256 "a91af40d844c4adf11e24e8caadc0a2b63c61f09786bc1123b40679dbd38278c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.3/inkwell_linux_amd64"
      sha256 "ca148a82990ea6619ed34831e8e24171e654bb5c2903aba9bd702f5973904cd5"
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
