defmodule CHAT.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :chat,
      version: "0.6.0",
      elixir: "~> 1.7",
      compilers: [:asn1] ++ Mix.compilers,
      asn1_paths: ["src"],
      deps: deps()
    ]
  end

  def application(), do: [mod: {CHAT.Application, []}]

  def deps() do
    [
      {:asn1ex, github: "vicentfg/asn1ex"},
      {:cowboy, "~> 2.5"},
      {:rocksdb, github: "voxoz/rocks"},
      {:syn, github: "ostinelli/syn"},
      {:kvx, github: "synrc/kvx"},
      {:n2o, github: "synrc/n2o"}
    ]
  end
end
