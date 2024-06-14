defmodule DotelGrpc.Export.Endpoint do
  use GRPC.Endpoint

  intercept(GRPC.Server.Interceptors.Logger)
  run(DotelGrpc.Metrics.Server)
  run(DotelGrpc.Logs.Server)
end
