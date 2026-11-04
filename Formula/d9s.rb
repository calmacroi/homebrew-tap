class D9s < Formula
  desc "K9s-style terminal UI for local Docker and Docker Compose"
  homepage "https://github.com/calmacroi/d9s"
  url "https://github.com/calmacroi/d9s/archive/refs/tags/0.1.0.tar.gz"
  sha256 "de0aae1a3bbd1aa7147466492461b7d03d8d4ce75c7babaf0e9a1cb77aa66a6d"
  license "Apache-2.0"
  head "https://github.com/calmacroi/d9s.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  def caveats
    <<~EOS
      d9s talks to the Docker daemon of your current docker context and needs
      the docker CLI with the compose plugin (e.g. from Docker Desktop).
    EOS
  end

  test do
    assert_match "d9s #{version}", shell_output("#{bin}/d9s --version")
  end
end
