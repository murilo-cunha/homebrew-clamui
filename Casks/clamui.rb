cask "clamui" do
  version "0.4.0"
  sha256 "6e0e06606f8216698793935cc7f25900bc93fbb6ab5037eb407d1128dd083e61"

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
