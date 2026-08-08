cask "edgecontrol" do
  version "2.3.0"
  sha256 "b270a8441daf99deff0eba23c73a1fd852a788f005014c02725ce6905dd38953"

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
