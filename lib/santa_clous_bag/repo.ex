defmodule SantaClousBag.Repo do
  use Ecto.Repo,
    otp_app: :santa_clous_bag,
    adapter: Ecto.Adapters.Postgres
end
