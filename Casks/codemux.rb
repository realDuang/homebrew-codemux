cask "codemux" do
  version "1.6.1"

  on_arm do
    sha256 "36698caf316f949a4c0645dba8d62986fe6dc1e435aefbddb1c2374aa894fdc6"
    url "https://github.com/realDuang/codemux/releases/download/v#{version}/CodeMux-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "c4a142ad1cf116fb36cf944cf3d2c1502b195c4c35e875b8c29e8297835ad83c"
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
