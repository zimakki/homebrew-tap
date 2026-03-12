class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  url "https://github.com/zimakki/inkwell/releases/download/v0.1.2/inkwell"
  version "0.1.2"
  sha256 "993573b6f1daa27bf58dae3000a1e8a6c35de47f931078c7cd90ee627d0cf3ab"
  license "MIT"

  depends_on "erlang"

  def install
    bin.install "inkwell"
  end

  test do
    output = shell_output("#{bin}/inkwell 2>&1", 1)
    assert_match "Usage:", output
  end
end
