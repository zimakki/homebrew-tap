cask "inkwell" do
  version "0.3.1"

  on_arm do
    sha256 "dd5a4ddc57d1bae05d1291070e36ffcb9de2492652ad9fd2bd7482f226d9da28"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "9ba2481cc4cd618ba4d44ef67b36ea0a70b897dfc830b79cd8b848ced478e884"
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
