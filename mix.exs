defmodule TestThatJsonEspec.Mixfile do
  use Mix.Project

  def project do
    [
      app:               :test_that_json_espec,
      version:           "0.6.0",
      elixir:            "~> 1.4",
      build_embedded:    Mix.env == :prod,
      start_permanent:   Mix.env == :prod,
      deps:              deps(),
      description:       description(),
      package:           package(),
      docs:              [extras: ["README.md", "CHANGELOG.md", "LICENSE.md"]],
      preferred_cli_env: [
        espec:           :test,
      ],
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [
        :logger,
      ],
    ]
  end

  defp package do
    [
      maintainers: ["Joshua Rieken"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/facto/test_that_json_espec"},
      files: ~w(mix.exs README.md CHANGELOG.md LICENSE.md lib),
    ]
  end

  defp description do
    """
    Test That JSON! assertions for ESpec
    """
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:espec,          "~> 1.0"},
      {:test_that_json, "~> 0.6"},
      {:ex_doc,         "~> 0.13.0", only: :dev},
      {:inch_ex,        ">= 0.0.0",  only: :docs},
    ]
  end
end
