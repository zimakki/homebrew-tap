class Inkwell < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.6/inkwell_darwin_arm64"
      sha256 "7ce460cb871732651e9479448db63b772d9d94e03e1ac62b1eed86ca43445040"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.6/inkwell_darwin_amd64"
      sha256 "7194e485fc6e56605023a4853f66cebb4f2071397fca1710f3dc31577bb5ab3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.6/inkwell_linux_amd64"
      sha256 "8d1b6d5df7be1300010590f835234bc5548b6bcac7f958fe8ac5f2bcc623c588"
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
