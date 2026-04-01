cask "nit" do
  version "1.3.1"
  sha256 "d26f5e5cad9cc13d1958b4227b364d8501d96120cb797393c7da62872419597d"

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
