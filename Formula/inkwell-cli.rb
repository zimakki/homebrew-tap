class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.13/inkwell_darwin_arm64"
      sha256 "de6042f6943048d330fec04403fc85a2469e33f8b21c66489756d9efed90b18f"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.13/inkwell_darwin_amd64"
      sha256 "ee902956d9006b5b70fcaa6e024907dec10c9fa0b481613269c8c9ce3c4699fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.13/inkwell_linux_amd64"
      sha256 "0ffb80c19e7ce04ce68d6e6e3188da5ef4c3e451cd31a5c61beaa678bc01e072"
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
