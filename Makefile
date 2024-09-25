mongostart:
	sudo docker compose -f docker/mongodb/mongodb.yaml --env-file docker/.env.dev up -d
mongostop:
	sudo docker compose -f docker/mongodb/mongodb.yaml --env-file docker/.env.dev down

postgrestart:
	sudo docker compose -f docker/postgresql/postgresql.yaml --env-file docker/.env.dev up -d
postgrestop:
	sudo docker compose -f docker/postgresql/postgresql.yaml --env-file docker/.env.dev down

nginxstart:
	sudo docker compose -f docker/compose.yaml up -d
nginxstop:
	sudo docker compose -f docker/compose.yaml down

storagestart:
	sudo docker compose -f docker/storage/storage.yaml --env-file docker/.env.dev up -d
storagestop:
	sudo docker compose -f docker/storage/storage.yaml --env-file docker/.env.dev down