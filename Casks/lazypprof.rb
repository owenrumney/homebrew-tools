cask "lazypprof" do
  name "lazypprof"
  desc "A keyboard-driven TUI for exploring Go pprof profiles."
  homepage "https://github.com/owenrumney/lazypprof"
  version "0.0.1"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_darwin_amd64.tar.gz"
      sha256 "44d88cb79ab75828a4b0c64d2b4d85cfb82dbd71119c5bb8783c301baa2426e7"
      binary "lazypprof"
    end
    on_arm do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_darwin_arm64.tar.gz"
      sha256 "689f5f510d8d050cbed7dd478c2b7a668236f4273f38b3a1b690a7fd27989e2f"
      binary "lazypprof"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_linux_amd64.tar.gz"
      sha256 "6206d2a0d71975b0317035e3f20b1b18112953e786be81d3a6473524f6487c49"
      binary "lazypprof"
    end
    on_arm do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_linux_arm64.tar.gz"
      sha256 "655611e95afe18704886d8f2c0ec7ce74a35357b160f7422be49fbcd6d0fd9bd"
      binary "lazypprof"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
