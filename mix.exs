defmodule Dist.MixProject do
  use Mix.Project

  def project do
    [
      app: :dist,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Dist, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dns_cluster, "~> 0.2"},
      {:syn, "~> 3.4"}
    ]
  end
end
