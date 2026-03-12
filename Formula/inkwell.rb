class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  url "https://github.com/zimakki/inkwell/releases/download/v0.1.0/inkwell"
  version "0.1.0"
  sha256 "29a66b34dc6befaf60f800e986224a2bf499a17361770b31809d0da0d75c881a"
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
