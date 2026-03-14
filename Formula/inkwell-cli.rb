class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.14"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.14/inkwell_darwin_arm64"
      sha256 "c067333f292a1482246d2db08a99d89906d107a34b6ca1e557f40b211fe4e20f"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.14/inkwell_darwin_amd64"
      sha256 "b7c379f23c6ee688a501b9967c2beb3430fb469b679007780a5e5fc6bdc9cb25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.14/inkwell_linux_amd64"
      sha256 "3972eda3a5dd93ac293543cc84786192b592d76a957c0d1128b4f1b83420a06c"
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
