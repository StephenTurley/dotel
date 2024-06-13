defmodule Dotel.Application do
  use Application

  def start(_type, _args) do
    children = [
      # ...
      {GRPC.Server.Supervisor,
       endpoint: DotelGrpc.MetricsEndpoint, port: 50051, start_server: true}
    ]

    opts = [strategy: :one_for_one, name: Dotel]
    Supervisor.start_link(children, opts)
  end
end
