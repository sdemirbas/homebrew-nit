cask "nit" do
  version "1.3.2"
  sha256 "891014b17003261963c26e40ced35b52bcca0c6b28c8f73ef26ebbc7f7b6892a"

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
