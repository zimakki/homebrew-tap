class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.4/inkwell_darwin_arm64"
      sha256 "008205f12cf3d345f6cc41e788502388caac58835fc4ac19aa2cfe7d31ec4831"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.4/inkwell_darwin_amd64"
      sha256 "d5dc8abfed1531ada3b47506317fe336ce96b69723cf2a8ff3bcaf27d0a4b52a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.4/inkwell_linux_amd64"
      sha256 "9ab9d1c4351b89c0d16bc23a6bc2759e221fe162acdbc06cbddb76ae929d05af"
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
