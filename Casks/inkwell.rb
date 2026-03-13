cask "inkwell" do
  version "0.2.8"

  on_arm do
    sha256 "83a054cc716214a264ed11dc3cace3c7a4139c44eb93a927df2441623a8f9e9c"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "ba5cf9bc0cc08047c33277a91678f9632bb17fe208cfd0c0746d56722cd0bca4"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_amd64.dmg"
  end

  name "Inkwell"
  desc "Live markdown preview desktop app"
  homepage "https://github.com/zimakki/inkwell"

  depends_on macos: ">= :catalina"

  app "Inkwell.app"
end
