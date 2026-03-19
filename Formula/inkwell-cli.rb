class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.15"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.15/inkwell_darwin_arm64"
      sha256 "79d5ab2e660ac88549264f3c15ec488a3570c773534d22bc0dba0b77e7f3b055"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.15/inkwell_darwin_amd64"
      sha256 "ad42152d5158947b46940493873bb6bc2991fa860db2497de3cdd71bcb5d50ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.15/inkwell_linux_amd64"
      sha256 "45288460860acc52bb98590eff0f47fb8126d5405199f5a21552a49945c86036"
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
