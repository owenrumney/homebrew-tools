cask "mdview" do
  name "mdview"
  desc "Render Markdown with Mermaid etc as html with live updating."
  homepage "https://github.com/owenrumney/mdview"
  version "0.1.6"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_amd64.tar.gz"
      sha256 "e14bc76e5e735c3b1b05df45939664fbd0260ad2b38f80f74f7e08922ce9744a"
      binary "mdview"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_arm64.tar.gz"
      sha256 "82017b52d1b9239b72778b0a4c7067bcf46724ddbfde02a2e319a0335c47be2a"
      binary "mdview"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_amd64.tar.gz"
      sha256 "bedd659e98c7d0ab70c3fdc207e6b71fab9e5920dcf0576fff222c1dfcf3b0a1"
      binary "mdview"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_arm64.tar.gz"
      sha256 "3bac1a2ff5256eb2a16a51b24fff364530b4b371e7042df653fb0e96299b5159"
      binary "mdview"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
