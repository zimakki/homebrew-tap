class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.22"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.22/inkwell_darwin_arm64"
      sha256 "16d2cf0ecb45dca6d0fe1596d4384f013934662647d4b4dc002da05142cc1600"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.22/inkwell_darwin_amd64"
      sha256 "fdf04d6858e3d0ea02307943a2541b0f935f4e84fe2de9b92b5c51f1adcbc578"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.22/inkwell_linux_amd64"
      sha256 "445ca91ffb9c02a7ae789a36350df0134089fd9bc4a07c54ab302a22bf875254"
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
