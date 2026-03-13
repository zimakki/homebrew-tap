class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.8"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.8/inkwell_darwin_arm64"
      sha256 "353339bd1b31706a1817591f51c036738630e458cc7431b8eae991a2ccd8b620"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.8/inkwell_darwin_amd64"
      sha256 "9ff2e0c8df6060c3d88c6aacfc62f4c26a2610cc8ee6f1e4d5d367871608a427"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.8/inkwell_linux_amd64"
      sha256 "291dcbf8cbbd3f93b64ad2f9dc1db3aba7b599940e3cedf78fe3428511f3ca99"
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
