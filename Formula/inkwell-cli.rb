class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.9/inkwell_darwin_arm64"
      sha256 "ee415d6a1343acf3b5810fb3fb4b03c643320ee666527f0e1206b9dfd0bdc4a3"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.9/inkwell_darwin_amd64"
      sha256 "1dea7470f310c6e892828af7888bc403ce212bacd2e62bfd33d3069c4b8b1067"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.9/inkwell_linux_amd64"
      sha256 "12bba22df26fd99172540fccaf29eec61ae65cef1f7489b14fecb2664c671a04"
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
