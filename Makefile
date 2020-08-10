DB_URL=${DB_DRIVER}://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}?sslmode=disable

export:
	@export $(cat .env | xargs)
build:
	@go build -o bin/go-todo-list -v
run:
	@export $(cat .env | xargs) && ./bin/go-todo-list
migrate:
	@migrate --path=db/migrations --database=${DB_URL} up
drop:
	@migrate --path=db/migrations --database=${DB_URL} down
clean:
	@go clean -o bin/go-todo-list
vendor:
	@go mod vendor