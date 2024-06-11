defmodule Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :resource_metrics, 1,
    repeated: true,
    type: Opentelemetry.Proto.Metrics.V1.ResourceMetrics,
    json_name: "resourceMetrics"
end

defmodule Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsServiceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :partial_success, 1,
    type: Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsPartialSuccess,
    json_name: "partialSuccess"
end

defmodule Opentelemetry.Proto.Collector.Metrics.V1.ExportMetricsPartialSuccess do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :rejected_data_points, 1, type: :int64, json_name: "rejectedDataPoints"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end