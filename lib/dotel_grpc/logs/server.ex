defmodule DotelGrpc.Logs.Server do
  require Logger

  use GRPC.Server,
    service: Opentelemetry.Proto.Collector.Logs.V1.LogsService.Service,
    http_transcode: true,
    compressors: [GRPC.Compressor.Gzip]

  alias Opentelemetry.Proto.Collector.Logs.V1, as: LogsCollector

  def export(request, stream) do
    Logger.info("logs export called")
    %LogsCollector.ExportLogsServiceResponse{}
  end
end
