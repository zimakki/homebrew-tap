class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.5/inkwell_darwin_arm64"
      sha256 "c42ac56cd7749d5f7fddef05778b21368633838ff359e2e56a556aaa08f64a7d"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.5/inkwell_darwin_amd64"
      sha256 "f1996ab8bdf8bccb95da37dfffff0ad0881794ef2b5fba7c33a43bf3351e7dac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.5/inkwell_linux_amd64"
      sha256 "e4ccbfee8ab1483c85c931110f71a51575b2c7c71d25c0b5d8c6a28de079e928"
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
