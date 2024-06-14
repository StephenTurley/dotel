defmodule DotelGrpc.Metrics.Server do
  require Logger

  use GRPC.Server,
    service: Opentelemetry.Proto.Collector.Metrics.V1.MetricsService.Service,
    http_transcode: true,
    compressors: [GRPC.Compressor.Gzip]

  alias Opentelemetry.Proto.Collector.Metrics.V1, as: MetricsCollector

  def export(%MetricsCollector.ExportMetricsServiceRequest{} = request, _stream) do
    Logger.info("metrics export called")
    %MetricsCollector.ExportMetricsServiceResponse{}
  end
end
