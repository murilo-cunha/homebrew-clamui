cask "clamui" do
  version "0.5.0"
  sha256 "e1d79db3aecca95b4d48ea380b6aff7028c77d92b434252fc7c01e2cb10fc4e1"

  url "https://github.com/murilo-cunha/clamui-site/releases/download/v#{version}/clamui_#{version}_aarch64.dmg"
  name "clamui"
  desc "Markdown editor with Claude built in - AI edits you review before they land"
  homepage "https://murilo-cunha.github.io/clamui-site/"

  depends_on arch: :arm64
  auto_updates true

  app "clamui.app"

  caveats <<~EOS
    clamui is ad-hoc signed. If macOS blocks the first launch, either
    right-click clamui.app -> Open (once), or clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/clamui.app
  EOS
end
