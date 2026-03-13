cask "inkwell" do
  version "0.2.9"

  on_arm do
    sha256 "fb67946a6c4a7ef0863c3f0e58db5f13650d516210ef7ed9c2fa9cabafbb96ea"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "989cd669fe1196c546e956aae8f167f6d7f3d61215a905eca64b05faf82328e4"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_amd64.dmg"
  end

  name "Inkwell"
  desc "Live markdown preview desktop app"
  homepage "https://github.com/zimakki/inkwell"

  depends_on macos: ">= :catalina"

  app "Inkwell.app"
end
