cask "mooziac" do
  version "1.1.7"
  sha256 "c3201d845e0c292052bc29867ba9dfca6e50d0f716594a3df6257d182870b04e"

  url "https://github.com/shirkeharsh/mooziac/releases/download/v#{version}/Mooziac.dmg"
  name "Mooziac"
  desc "Menu bar music player for YouTube Music and local audio"
  homepage "https://mooziac.threeten.site/"

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
