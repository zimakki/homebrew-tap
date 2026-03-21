cask "inkwell" do
  version "0.2.19"

  on_arm do
    sha256 "31710d80b6ebc37a48eb6aa35f3547fefc816d9284f2b4142f2bb3aa2f7ca914"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "00925ee35ed4069d15eaf72bca10f0f8f090a53a77a016daf587d033a000abff"
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
