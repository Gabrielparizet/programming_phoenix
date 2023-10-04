defmodule ProgrammingPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :programming_phoenix,
    adapter: Ecto.Adapters.Postgres
end
