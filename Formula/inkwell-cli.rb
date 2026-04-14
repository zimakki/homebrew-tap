class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.23"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.23/inkwell_darwin_arm64"
      sha256 "10371e93d7d8c2a08c7c4a10b3c58e8f37c51046cc32457bf28fb0af44b9ffa7"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.23/inkwell_darwin_amd64"
      sha256 "193257150ce85c5e43bd467a7e9340f21b55c59df9d896ff2e6ce4e2f68c21d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.23/inkwell_linux_amd64"
      sha256 "653c9fe11d9d9ae1169595952d40bd0f8e869eee06a5925f0368d60fb0613b7a"
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
