cask "buzzle" do
  version "1.0.1"
  sha256 "0432d6fb312f386303e54493809e367a880a1c5a9a7be4b2e690f33a9e1a7d4c"

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
