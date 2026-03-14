class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.12/inkwell_darwin_arm64"
      sha256 "cb238b4cac5eb89547eb5e0aba50344992a1a54395bbbd07bcab35b17fa1f82b"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.12/inkwell_darwin_amd64"
      sha256 "5a073bcbc02cedead438db5128c45f8c36f75cbfcfec9c9e8a445c0c784de5b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.12/inkwell_linux_amd64"
      sha256 "b2d87d4ffe43e6a61c0d092ddfabd66e79a61ee7d397f671babc924462f8a071"
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
