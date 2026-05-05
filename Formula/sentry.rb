class Sentry < Formula
  desc "Terminal UI for monitoring OpenCode agent sessions"
  homepage "https://github.com/AxelMrak/sentry-oc"
  url "https://github.com/AxelMrak/sentry-oc.git",
      tag: "v0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "sentry"
  end

  test do
    assert_match "sentry", shell_output("#{bin}/sentry --help", 1)
  end
end
