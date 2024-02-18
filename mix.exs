defmodule Ass.MixProject do
  use Mix.Project

  def project do
    [
      app: :ass,
      version: "0.0.1",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
