defmodule Ezdns.Mixfile do
  use Mix.Project

  def project do
    [app: :ezdns,
     version: "0.0.1",
     elixir: "~> 0.13.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications:  ~w(couchie flaky)a,
      mod: { Ezdns, [] } ]
  end

  # List all dependencies in the format:
  #
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:flaky, github: "nirvana/flaky"},
      {:couchie, github: "nirvana/couchie"},
      { :erldns, github: "n1rvana/erl-dns" }  # This fork supports R17
    ]
  end
end
