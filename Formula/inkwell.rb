class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.2/inkwell_darwin_arm64"
      sha256 "e14a76bd9869f89be75bd5d5f2904351faabb3e3054467de23629172d95a5aba"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.2/inkwell_darwin_amd64"
      sha256 "53c36215481aa1c75daf4eff1f03d1a786aecb1e2acda555ad518c10879d4e27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.2/inkwell_linux_amd64"
      sha256 "583e74bcf9efd1540ac790c5cb46bb29f489fb4e9c571b7d90ed10b9c4e0781a"
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
