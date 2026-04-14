cask "inkwell" do
  version "0.2.23"

  on_arm do
    sha256 "1114755dcaf1124c390e9a6e1e488ae4764c4f688c73230e393014e289d2b60e"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "f50d1c65bc61e5f00f61e73ccf7a08ac1a9bc4c2cad36a95a0b108b71ec01f7f"
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
