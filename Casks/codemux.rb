cask "codemux" do
  version "1.6.3"

  on_arm do
    sha256 "e1902182028d66ce681cc3dcaf7f1ee943a4f0a903e6389296d83b83aeb0d594"
    url "https://github.com/realDuang/codemux/releases/download/v#{version}/CodeMux-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "2529adbd157b48a0ec07c65bd90c0e6b9c5e22a9d1eecebaeddecb15b9d67e17"
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
