class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.24"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.24/inkwell_darwin_arm64"
      sha256 "7e5915e471ef1701ddc821838d69f3246b73407aa19204e5f8f2f80209e398fa"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.24/inkwell_darwin_amd64"
      sha256 "ed0f498ff972a09a31669711f4f48867fa993c1a426710624c0e043c53826362"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.24/inkwell_linux_amd64"
      sha256 "89d0595b965730af06d9a4c84220792f68dded1ed5d48d3924db14cfb60f7aae"
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
