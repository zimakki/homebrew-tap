class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.21"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.21/inkwell_darwin_arm64"
      sha256 "98c8452f28df89cf45b773a317e9b805777153220246a854ba605c8c94ec4cf6"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.21/inkwell_darwin_amd64"
      sha256 "2b485bff6f711221f8fe6dd837ac841f218393278303167ac7803a2c873c2536"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.21/inkwell_linux_amd64"
      sha256 "54654e567ea767834e4fb938a21b325cfdeb9bfd86aa0f20d7a2b4fb0b9d19df"
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
