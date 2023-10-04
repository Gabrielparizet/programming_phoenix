defmodule ProgrammingPhoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ProgrammingPhoenixWeb.Telemetry,
      # Start the Ecto repository
      ProgrammingPhoenix.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ProgrammingPhoenix.PubSub},
      # Start Finch
      {Finch, name: ProgrammingPhoenix.Finch},
      # Start the Endpoint (http/https)
      ProgrammingPhoenixWeb.Endpoint
      # Start a worker by calling: ProgrammingPhoenix.Worker.start_link(arg)
      # {ProgrammingPhoenix.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ProgrammingPhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ProgrammingPhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
