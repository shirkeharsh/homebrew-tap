cask "mooziac" do
  version "1.2.5"
  sha256 "3c3d5302f51e0d6def6ab89cde4977dd9ed7a389dd5e44a9192c63cd959d834e"

  url "https://github.com/shirkeharsh/mooziac/releases/download/v#{version}/Mooziac.dmg"
  name "Mooziac"
  desc "Menu bar music player for YouTube Music and local audio"
  homepage "https://mooziac.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mooziac.app"

  uninstall quit: "app.mooziac.mac"

  zap trash: [
    "~/Library/Application Support/Mooziac",
    "~/Library/Caches/app.mooziac.mac",
    "~/Library/HTTPStorages/app.mooziac.mac",
    "~/Library/Preferences/app.mooziac.mac.plist",
  ]
end
