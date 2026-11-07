class GitComposeCommit < Formula
  desc "Compose structured Git commit messages"
  homepage "https://github.com/demerphq/git-compose-commit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.0/git-compose-commit-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ad033ebbe55ab48adf57092e9f512abb578a41a16e682b152e98d2e0c7d19bb"
    end
    on_arm do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.0/git-compose-commit-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f602f7a250c755a1d2a893d22f977d8b0be3f8d68482dee278b23c1cd57152be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.0/git-compose-commit-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f18ac445c2605c11c8fd990ff04cd98dd7bf20f24b8ac9022654fb01b986bc7"
    end
    on_arm do
      url "https://github.com/demerphq/git-compose-commit/releases/download/v0.2.0/git-compose-commit-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a626a8cf5e181583a6674df020de9dc90a33df51955cd3f99c62bd75470958c0"
    end
  end

  def install
    bin.install "git-compose-commit", "cli-compose-text"
  end

  test do
    assert_match "git-compose-commit", shell_output("#{bin}/git-compose-commit --version")
  end
end
