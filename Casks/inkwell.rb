cask "inkwell" do
  version "0.2.11"

  on_arm do
    sha256 "2a25c1397ee236d12a5953f3f17b9b4a5ce8bb0c3a58320b83e0912c4aca4272"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "c38a60ef62eb0262e3664fa736700a9d9c3ce808e624abd85d96774db770ebed"
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
