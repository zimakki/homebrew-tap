cask "inkwell" do
  version "0.3.2"

  on_arm do
    sha256 "3e37d08a77b5ea6afe5fd75e619df79412325bfb6f7d3a2e6aafa45ff9e321b2"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "cce0d939cd3e7ad740f5ac48ca989630355d79aed00fec8115c4079addbb0982"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_amd64.dmg"
  end

  name "Inkwell"
  desc "Live markdown preview desktop app"
  homepage "https://github.com/zimakki/inkwell"

  depends_on macos: ">= :catalina"

  app "Inkwell.app"
  binary "#{appdir}/Inkwell.app/Contents/MacOS/inkwell"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Inkwell.app"]
  end
end
