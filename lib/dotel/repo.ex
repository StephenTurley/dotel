defmodule Dotel.Repo do
  use Ecto.Repo,
    otp_app: :dotel,
    adapter: Ecto.Adapters.Postgres
end
