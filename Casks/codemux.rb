cask "codemux" do
  version "1.7.0"

  on_arm do
    sha256 "1a6e833058f01747329ca4b0d423c0501d3d40bea80768ba493f40b41eebcb72"
    url "https://github.com/realDuang/codemux/releases/download/v#{version}/CodeMux-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "1ce178854e0585ccb25a3479346b9d621bcf4b8e6f5a5885fb5671b3db523069"
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
