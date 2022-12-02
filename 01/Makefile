.DEFAULT_GOAL: run

run: part1 part2

part1:
	docker run --rm -v $$PWD:/app -e LUA_PATH=/app/?.lua nickblah/lua:5.1-alpine lua /app/main.lua part1 /app/data/input.txt

part2:
	docker run --rm -v $$PWD:/app -e LUA_PATH=/app/?.lua nickblah/lua:5.1-alpine lua /app/main.lua part2 /app/data/input.txt

test:
	docker compose run --rm test
