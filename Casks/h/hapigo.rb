cask "hapigo" do
  version "2.11.1,230"
  sha256 :no_check

  url "https://dl.hapigo.com/HapiGo.dmg"
  name "HapiGo"
  desc "Application launcher and productivity software"
  homepage "https://www.hapigo.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "HapiGo.app"

  zap trash: [
    "~/Library/Application Support/Hapigo",
    "~/Library/Caches/Hapigo",
    "~/Library/Caches/com.xunyong.hapigo",
    "~/Library/HTTPStorages/com.xunyong.hapigo",
    "~/Library/HTTPStorages/com.xunyong.hapigo.binarycookies",
    "~/Library/Preferences/com.xunyong.hapigo.plist",
    "~/Library/Preferences/com.xunyong.hapigofind.plist",
    "~/Library/WebKit/com.xunyong.hapigo",
  ]
end
