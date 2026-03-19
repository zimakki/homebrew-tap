class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.16"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.16/inkwell_darwin_arm64"
      sha256 "b0d7aa2e390e140eac2b696feb6a05356a0ba9d3d4c797a55e156242b3c4875f"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.16/inkwell_darwin_amd64"
      sha256 "e976354b9a4b8c2923a21f2c93abb2ce7e0f19157b4990c9089845560e8c88c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.16/inkwell_linux_amd64"
      sha256 "7480dee7922416e09d031537decdd61fdc54ba4a6fa178a4158ecb4e6a49ded8"
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
