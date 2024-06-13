defmodule Opentelemetry.Proto.Collector.Profiles.V1experimental.ExportProfilesServiceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :resource_profiles, 1,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.ResourceProfiles,
    json_name: "resourceProfiles"
end

defmodule Opentelemetry.Proto.Collector.Profiles.V1experimental.ExportProfilesServiceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :partial_success, 1,
    type: Opentelemetry.Proto.Collector.Profiles.V1experimental.ExportProfilesPartialSuccess,
    json_name: "partialSuccess"
end

defmodule Opentelemetry.Proto.Collector.Profiles.V1experimental.ExportProfilesPartialSuccess do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :rejected_profiles, 1, type: :int64, json_name: "rejectedProfiles"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Opentelemetry.Proto.Collector.Profiles.V1experimental.ProfilesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "opentelemetry.proto.collector.profiles.v1experimental.ProfilesService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Export,
      Opentelemetry.Proto.Collector.Profiles.V1experimental.ExportProfilesServiceRequest,
      Opentelemetry.Proto.Collector.Profiles.V1experimental.ExportProfilesServiceResponse
end

defmodule Opentelemetry.Proto.Collector.Profiles.V1experimental.ProfilesService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Opentelemetry.Proto.Collector.Profiles.V1experimental.ProfilesService.Service
end