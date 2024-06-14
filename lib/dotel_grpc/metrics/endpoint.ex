defmodule DotelGrpc.Metrics.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Server.Interceptors.Logger)
  run(DotelGrpc.Metrics.Server)
end
