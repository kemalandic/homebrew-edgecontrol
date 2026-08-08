cask "edgecontrol" do
  version "2.3.1"
  sha256 "ee83d6b7d399674fd3c51754dbe2b682486a498200c1164d831baca43be1563b"

  url "https://github.com/kemalandic/edgecontrol/releases/download/v#{version}/EdgeControl.dmg"
  name "EdgeControl"
  desc "Native macOS system dashboard for any display — XENEON EDGE, iPad, monitors"
  homepage "https://github.com/kemalandic/edgecontrol"

  depends_on macos: :sonoma

  app "EdgeControl.app"

  zap trash: [
    "~/Library/Application Support/EdgeControl",
    "~/Library/Group Containers/group.ai.pakslab.edgecontrol",
  ]
end
