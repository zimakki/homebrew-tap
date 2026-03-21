class InkwellCli < Formula
  desc "Live markdown preview daemon with file picker and fuzzy search"
  homepage "https://github.com/zimakki/inkwell"
  license "MIT"
  version "0.2.19"

  on_macos do
    on_arm do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.19/inkwell_darwin_arm64"
      sha256 "65d659a5b2db0d726fd2dfcccd65fc1c9d96083edea517b41f38e7201cc95cd9"
    end
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.19/inkwell_darwin_amd64"
      sha256 "36459c6efe9c244f5953e0f738dbca651356e84406ea31aa44521482a0e0d2d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zimakki/inkwell/releases/download/v0.2.19/inkwell_linux_amd64"
      sha256 "66c3c7e82baf9ad8514d4b290b8ce77260a3368c8b0bceefd64bf4dd7eefc309"
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
