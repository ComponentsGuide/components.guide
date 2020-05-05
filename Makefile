.PHONY: compile

export SECRET_KEY_BASE = $(shell mix phx.gen.secret)

build:
	mix deps.get --only prod
	MIX_ENV=prod mix compile
	npm ci --prefix ./assets
	npm run deploy --prefix ./assets
	mix phx.digest

release: build
	MIX_ENV=prod mix release

dev:
	iex -S mix phx.server
