class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.10/inkwell_darwin_arm64"
      sha256 "878da7c2dbb1267762d6674f35b50afda461dfb9e55cfaa888e6651ea78491b6"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.10/inkwell_darwin_amd64"
      sha256 "e3e94af893e3967d4772977d492b1ab0be2a13657e5130e9b3a33f52a0d75c66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.10/inkwell_linux_amd64"
      sha256 "1b2033f1e06888e06ece3a2fd156006368051c0d04c65791bf28362e9ecb1d5a"
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
