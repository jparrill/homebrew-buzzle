cask "buzzle" do
  version "1.0.0"
  sha256 "d46d7a196af2ab443bd04fef925a092e5227f6fb152d2d02a17a8fa125aa7441"

  url "https://github.com/jparrill/buzzle/releases/download/v#{version}/Buzzle-#{version}-macos.zip"
  name "Buzzle"
  desc "Lightweight macOS menu bar app that keeps your cursor buzzing"
  homepage "https://github.com/jparrill/buzzle"

  depends_on macos: ">= :ventura"

  app "Buzzle.app"

  zap trash: [
    "~/Library/Preferences/com.jparrill.buzzle.plist",
  ]
end
