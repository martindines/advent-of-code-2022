.DEFAULT_GOAL: run

run:
	docker run --rm -v $$PWD:/app -e LUA_PATH=/app/?.lua nickblah/lua:5.1-alpine lua /app/main.lua /app/data/input.txt

test:
	docker compose run --rm test
