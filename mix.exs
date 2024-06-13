defmodule Dotel.MixProject do
  use Mix.Project

  def project do
    [
      app: :dotel,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Dotel.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:grpc, "~> 0.7"},
      {:jason, "~> 1.4"},
      {:protobuf, "~> 0.11"},
      {:protobuf_generate, "~> 0.1.2"}
    ]
  end
end
