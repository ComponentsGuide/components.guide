# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :components_guide, ComponentsGuideWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t+D2POR1MKpq9hW401oI0qM6c12HsMuJJsbYru9Ta58hl0VX70z8Ano6uSk4s+ag",
  render_errors: [view: ComponentsGuideWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ComponentsGuide.PubSub,
  live_view: [signing_salt: "JNYbgmOL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
