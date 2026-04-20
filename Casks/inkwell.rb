cask "inkwell" do
  version "0.3.3"

  on_arm do
    sha256 "3bb02dd2370671afdebd30a94590a0bd8f8caa740e0dc10d63065cfd251e1347"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "cb87711df32e197b3217f0d31aa78761e118a6030ce4e7c70dee3cb1d9b6c5b8"
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
