cask "inkwell" do
  version "0.2.28"

  on_arm do
    sha256 "0eb4f39181bf98d2f9a63b0fcd3785222e4235af26425b05758318fe65078546"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "782bfddca40ff60d2eaae708177e970507aeb1596f3b7b6b3edbc26c680fec91"
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
