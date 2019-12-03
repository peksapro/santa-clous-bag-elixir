# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :santa_clous_bag,
  ecto_repos: [SantaClousBag.Repo]

# Configures the endpoint
config :santa_clous_bag, SantaClousBagWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EHo+OASE/NSm1Sf4qh7XClVVRTJ8abYWL9GM+3YSXJmxvChPtm/Uiix0GHcQoeTS",
  render_errors: [view: SantaClousBagWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SantaClousBag.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
