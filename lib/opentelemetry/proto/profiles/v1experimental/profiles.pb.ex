defmodule Opentelemetry.Proto.Profiles.V1experimental.ProfilesData do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :resource_profiles, 1,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.ResourceProfiles,
    json_name: "resourceProfiles"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.ResourceProfiles do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :resource, 1, type: Opentelemetry.Proto.Resource.V1.Resource

  field :scope_profiles, 2,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.ScopeProfiles,
    json_name: "scopeProfiles"

  field :schema_url, 3, type: :string, json_name: "schemaUrl"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.ScopeProfiles do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :scope, 1, type: Opentelemetry.Proto.Common.V1.InstrumentationScope

  field :profiles, 2,
    repeated: true,
    type: Opentelemetry.Proto.Profiles.V1experimental.ProfileContainer

  field :schema_url, 3, type: :string, json_name: "schemaUrl"
end

defmodule Opentelemetry.Proto.Profiles.V1experimental.ProfileContainer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :profile_id, 1, type: :bytes, json_name: "profileId"
  field :start_time_unix_nano, 2, type: :fixed64, json_name: "startTimeUnixNano"
  field :end_time_unix_nano, 3, type: :fixed64, json_name: "endTimeUnixNano"
  field :attributes, 4, repeated: true, type: Opentelemetry.Proto.Common.V1.KeyValue
  field :dropped_attributes_count, 5, type: :uint32, json_name: "droppedAttributesCount"
  field :original_payload_format, 6, type: :string, json_name: "originalPayloadFormat"
  field :original_payload, 7, type: :bytes, json_name: "originalPayload"
  field :profile, 8, type: Opentelemetry.Proto.Profiles.V1experimental.Profile
end