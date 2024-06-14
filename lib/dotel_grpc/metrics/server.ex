defmodule DotelGrpc.Metrics.Server do
  require Logger

  use GRPC.Server,
    service: Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Service,
    http_transcode: true,
    compressors: [GRPC.Compressor.Gzip]

  alias Opentelemetry.Proto.Collector.Metrics.V1, as: MetricsCollector

  def export(request, stream) do
    Logger.info("metrics export called")

    IO.inspect(request)
    IO.inspect(stream)
    %MetricsCollector.ExportMetricsServiceResponse{}
  end
end
