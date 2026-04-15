cask "inkwell" do
  version "0.2.25"

  on_arm do
    sha256 "4583391ce204f4490dbb5dc402284e0e0cd8ca3ef8b5fc1c836338fb115dc278"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "82377d6d827383d8f276164c455ca6df8556df86ff81bc5013dbaa248e77e140"
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
