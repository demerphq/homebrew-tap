class GitComposeCommit < Formula
  desc "Compose structured Git commit messages"
  homepage "https://github.com/demerphq/git-compose-commit"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.1/git-compose-commit-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "e10f34acb1a6535b548f3947052fb7610226e85282bde4bc0b2aa0f716f7c321"
    end
    on_arm do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.1/git-compose-commit-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "e334394924831812a34584b191d1880cfdd3281b0f8333fa43cee226f9cf7fe2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.1/git-compose-commit-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5426a2c9fd20841dba06f265dcdca8b1dff758880515aefd5f4f9ed0f0368699"
    end
    on_arm do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.1/git-compose-commit-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95e575275e35f32c4d42b23d3ca953cb1ab76cd4929137d7c78ac27cac3afcc6"
    end
  end

  def install
    bin.install "git-compose-commit", "cli-compose-text"
  end

  test do
    assert_match "git-compose-commit", shell_output("#{bin}/git-compose-commit --version")
  end
end
