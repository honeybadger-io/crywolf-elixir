# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :crywolf, Crywolf.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "ePZ0ELXOJcnCQfUvhuoddWXkgFHTXSNleMHbMHs36ph1/RH5UwVQiV1/AaUBGNBQ",
  debug_errors: false,
  pubsub: [name: Crywolf.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Default session store.
config :crywolf, Crywolf.Router,
  session: [store: :cookie,
    key: "_crywolf_session"]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
