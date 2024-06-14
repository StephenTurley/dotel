defmodule Dotel.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DotelWeb.Telemetry,
      Dotel.Repo,
      {DNSCluster, query: Application.get_env(:dotel, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Dotel.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Dotel.Finch},
      {GRPC.Server.Supervisor,
       endpoint: DotelGrpc.Metrics.Endpoint, port: 50051, start_server: true},
      # Start a worker by calling: Dotel.Worker.start_link(arg)
      # {Dotel.Worker, arg},
      # Start to serve requests, typically the last entry
      DotelWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Dotel.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DotelWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
