cask "codemux" do
  version "1.5.0"

  on_arm do
    sha256 "30b3703f708eb4f5434d1d5f1f1cff3b8a4efd5791151cab4344c3ce54963b37"
    url "https://github.com/realDuang/codemux/releases/download/v#{version}/CodeMux-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "a1163e4a898751f5da2a878fbfc66dfb7ad8b0c596feb073c68e438607a2f3c1"
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
