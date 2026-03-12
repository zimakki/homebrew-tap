class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.1/inkwell_darwin_arm64"
      sha256 "5021d60b73781b3b952c92c91a9d0b5d58930b748c03f91d254de5c6ef1cea01"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.1/inkwell_darwin_amd64"
      sha256 "d2d2f81463b465699a44971a0d78ec76d5060d0ed6f14ab380d916411b6382c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.1/inkwell_linux_amd64"
      sha256 "3e336b6dc23331b9255f4b9c944a7c333d0a254d11daf642d26e6187e976d4ab"
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
