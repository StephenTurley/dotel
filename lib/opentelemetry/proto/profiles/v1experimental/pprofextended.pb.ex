defmodule Opentelemetry.Proto.Profiles.V1experimental.AggregationTemporality do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :AGGREGATION_TEMPORALITY_UNSPECIFIED, 0
  field :AGGREGATION_TEMPORALITY_DELTA, 1
  field :AGGREGATION_TEMPORALITY_CUMULATIVE, 2
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.BuildIdKind do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :BUILD_ID_LINKER, 0
  field :BUILD_ID_BINARY_HASH, 1
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Profile do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :sample_type, 1,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.ValueType,
    json_name: "sampleType"

  field :sample, 2, repeated: true, type: Opentelemetry.Proto.Profiles.V1experimental.Sample
  field :mapping, 3, repeated: true, type: Opentelemetry.Proto.Profiles.V1experimental.Mapping
  field :location, 4, repeated: true, type: Opentelemetry.Proto.Profiles.V1experimental.Location
  field :location_indices, 15, repeated: true, type: :int64, json_name: "locationIndices"
  field :function, 5, repeated: true, type: Opentelemetry.Proto.Profiles.V1experimental.Function

  field :attribute_table, 16,
    repeated: true,
    type: Opentelemetry.Proto.Common.V1.KeyValue,
    json_name: "attributeTable"

  field :attribute_units, 17,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.AttributeUnit,
    json_name: "attributeUnits"

  field :link_table, 18,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.Link,
    json_name: "linkTable"

  field :string_table, 6, repeated: true, type: :string, json_name: "stringTable"
  field :drop_frames, 7, type: :int64, json_name: "dropFrames"
  field :keep_frames, 8, type: :int64, json_name: "keepFrames"
  field :time_nanos, 9, type: :int64, json_name: "timeNanos"
  field :duration_nanos, 10, type: :int64, json_name: "durationNanos"

  field :period_type, 11,
    type: Opentelemetry.Proto.Profiles.V1experimental.ValueType,
    json_name: "periodType"

  field :period, 12, type: :int64
  field :comment, 13, repeated: true, type: :int64
  field :default_sample_type, 14, type: :int64, json_name: "defaultSampleType"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.AttributeUnit do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :attribute_key, 1, type: :int64, json_name: "attributeKey"
  field :unit, 2, type: :int64
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Link do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :trace_id, 1, type: :bytes, json_name: "traceId"
  field :span_id, 2, type: :bytes, json_name: "spanId"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.ValueType do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :type, 1, type: :int64
  field :unit, 2, type: :int64

  field :aggregation_temporality, 3,
    type: Opentelemetry.Proto.Profiles.V1experimental.AggregationTemporality,
    json_name: "aggregationTemporality",
    enum: true
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Sample do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :location_index, 1, repeated: true, type: :uint64, json_name: "locationIndex"
  field :locations_start_index, 7, type: :uint64, json_name: "locationsStartIndex"
  field :locations_length, 8, type: :uint64, json_name: "locationsLength"
  field :stacktrace_id_index, 9, type: :uint32, json_name: "stacktraceIdIndex"
  field :value, 2, repeated: true, type: :int64
  field :label, 3, repeated: true, type: Opentelemetry.Proto.Profiles.V1experimental.Label
  field :attributes, 10, repeated: true, type: :uint64
  field :link, 12, type: :uint64
  field :timestamps_unix_nano, 13, repeated: true, type: :uint64, json_name: "timestampsUnixNano"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Label do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :int64
  field :str, 2, type: :int64
  field :num, 3, type: :int64
  field :num_unit, 4, type: :int64, json_name: "numUnit"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Mapping do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint64
  field :memory_start, 2, type: :uint64, json_name: "memoryStart"
  field :memory_limit, 3, type: :uint64, json_name: "memoryLimit"
  field :file_offset, 4, type: :uint64, json_name: "fileOffset"
  field :filename, 5, type: :int64
  field :build_id, 6, type: :int64, json_name: "buildId"

  field :build_id_kind, 11,
    type: Opentelemetry.Proto.Profiles.V1experimental.BuildIdKind,
    json_name: "buildIdKind",
    enum: true

  field :attributes, 12, repeated: true, type: :uint64
  field :has_functions, 7, type: :bool, json_name: "hasFunctions"
  field :has_filenames, 8, type: :bool, json_name: "hasFilenames"
  field :has_line_numbers, 9, type: :bool, json_name: "hasLineNumbers"
  field :has_inline_frames, 10, type: :bool, json_name: "hasInlineFrames"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Location do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint64
  field :mapping_index, 2, type: :uint64, json_name: "mappingIndex"
  field :address, 3, type: :uint64
  field :line, 4, repeated: true, type: Opentelemetry.Proto.Profiles.V1experimental.Line
  field :is_folded, 5, type: :bool, json_name: "isFolded"
  field :type_index, 6, type: :uint32, json_name: "typeIndex"
  field :attributes, 7, repeated: true, type: :uint64
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Line do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :function_index, 1, type: :uint64, json_name: "functionIndex"
  field :line, 2, type: :int64
  field :column, 3, type: :int64
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.Function do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :uint64
  field :name, 2, type: :int64
  field :system_name, 3, type: :int64, json_name: "systemName"
  field :filename, 4, type: :int64
  field :start_line, 5, type: :int64, json_name: "startLine"
end