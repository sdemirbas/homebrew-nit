cask "nit" do
  version "1.3.0"
  sha256 "3fea14373aa2d483a8396feb187c61bfb7e3456f2b1af91721200fb5de7a2578"

  url "https://github.com/sdemirbas/Nit/releases/download/v#{version}/Nit-#{version}.zip"
  name "Nit"
  desc "Menu bar app to control external display brightness, contrast, and color via DDC/CI"
  homepage "https://github.com/sdemirbas/Nit"

  app "Nit.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Nit.app"],
      sudo: false
  end

  zap trash: "~/Library/Preferences/app.nit.plist"
end
