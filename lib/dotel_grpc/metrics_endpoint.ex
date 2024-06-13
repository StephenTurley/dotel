defmodule DotelGrpc.MetricsEndpoint do
  use GRPC.Endpoint

  intercept(GRPC.Server.Interceptors.Logger)
  run(DotelGrpc.MetricsServer)
end
