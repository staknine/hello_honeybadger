defmodule HelloHoneybadger.Repo do
  use Ecto.Repo,
    otp_app: :hello_honeybadger,
    adapter: Ecto.Adapters.Postgres
end
