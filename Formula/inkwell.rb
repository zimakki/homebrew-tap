class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  url "https://github.com/zimakki/inkwell/releases/download/v0.1.4/inkwell"
  version "0.1.4"
  sha256 "7b5ee8a7602edfee944bbd36791300369457a75f84447ada710bb6c130607bec"
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
