class MlxAudiogen < Formula
  include Language::Python::Virtualenv

  desc "Music and audio generation on Apple Silicon using MLX"
  homepage "https://pypi.org/project/mlx-audiogen/"
  url "https://files.pythonhosted.org/packages/source/m/mlx-audiogen/mlx_audiogen-0.2.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "Apache-2.0"

  depends_on "python@3.12"
  depends_on :macos

  option "with-llm", "Include LLM prompt enhancement support"

  def install
    virtualenv_create(libexec, "python3.12")
    extras = "server"
    extras += ",llm" if build.with? "llm"
    system libexec/"bin/pip", "install", "mlx-audiogen[#{extras}]"
  end

  test do
    system bin/"mlx-audiogen", "--help"
  end
end
