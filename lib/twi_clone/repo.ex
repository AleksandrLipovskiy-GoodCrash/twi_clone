defmodule TwiClone.Repo do
  use Ecto.Repo,
    otp_app: :twi_clone,
    adapter: Ecto.Adapters.Postgres
end
