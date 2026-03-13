class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.7/inkwell_darwin_arm64"
      sha256 "391b98300626a8959a1b01ea9755abc4267ff40c2ed991e7214e87982a1d486e"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.7/inkwell_darwin_amd64"
      sha256 "3367e3a07d29ff4f60473b3b888f33c71d9bad32674ace785c1f279413958061"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.7/inkwell_linux_amd64"
      sha256 "b38f9d2dab9b16b379ad5883bb03c96fe89ec8021de55ac6450ace2e3b21e21f"
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
