cask "inkwell" do
  version "0.2.18"

  on_arm do
    sha256 "7c864b6b8cec6f5d0662a9d888299430cd01d5740a1bf4c00ea0a35a1312e333"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "ec57694d588e4b966f748715387ce1496356dc364898ccce6425aefd4302bc7d"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_amd64.dmg"
  end

  name "Inkwell"
  desc "Live markdown preview desktop app"
  homepage "https://github.com/zimakki/inkwell"

  depends_on macos: ">= :catalina"
  depends_on formula: "zimakki/tap/inkwell-cli"

  app "Inkwell.app"

  postflight do
    # The app is ad-hoc signed but not notarized, so macOS quarantine
    # causes a "damaged and can't be opened" error.  Strip the flag.
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Inkwell.app"]
  end
end
