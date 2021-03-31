defmodule Executables.Mixfile do
  use Mix.Project

  def project do
    [app: :executables, version: "0.0.1", escript: escript()]
  end

  defp escript do
    [main_module: Executables.CLI]
  end
end