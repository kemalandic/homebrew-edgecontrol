cask "edgecontrol" do
  version "2.2.0"
  sha256 "8f954479cc7535579fc8825170167b8303095fea56df7ec9fe31503c88a69033"

  url "https://github.com/kemalandic/edgecontrol/releases/download/v#{version}/EdgeControl.dmg"
  name "EdgeControl"
  desc "Native macOS system dashboard for any display — XENEON EDGE, iPad, monitors"
  homepage "https://github.com/kemalandic/edgecontrol"

  depends_on macos: ">= :sonoma"

  app "EdgeControl.app"

  zap trash: [
    "~/Library/Application Support/EdgeControl",
    "~/Library/Group Containers/group.ai.pakslab.edgecontrol",
  ]
end
