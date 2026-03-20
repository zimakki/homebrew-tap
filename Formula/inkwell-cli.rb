class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.18"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.18/inkwell_darwin_arm64"
      sha256 "dbbe54f83be7e28f912c006f62954ec566b9401a2a43b37192955dd4169bfd52"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.18/inkwell_darwin_amd64"
      sha256 "d7fc9ae97fcc35b412f90ad78bc703369d7b08dc4e345126e2fb750d01f579d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.18/inkwell_linux_amd64"
      sha256 "5f68001bffca54b3e765421f1dfe85c2ce67e18e8a50e3ebf1edb99c6150cf14"
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
