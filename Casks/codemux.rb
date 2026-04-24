cask "codemux" do
  version "1.6.2"

  on_arm do
    sha256 "9c23afc0a1cccd172ca9e1ba867a0611e1907de48de9543301fe6cb0dfa9dd9d"
    url "https://github.com/realDuang/codemux/releases/download/v#{version}/CodeMux-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "32d15a3297a3ae5c9539bd525d197762cef5d85708497550028d275f678086b7"
    url "https://github.com/realDuang/codemux/releases/download/v#{version}/CodeMux-#{version}-mac.zip"
  end

  name "CodeMux"
  desc "Multi-engine AI coding assistant client"
  homepage "https://github.com/realDuang/codemux"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "CodeMux.app"

  zap trash: [
    "~/Library/Application Support/codemux",
    "~/Library/Preferences/dev.codemux.app.plist",
    "~/Library/Saved Application State/dev.codemux.app.savedState",
  ]
end
