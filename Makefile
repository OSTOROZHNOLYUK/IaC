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
	sudo docker run -itd -p 10502:10502 --rm --name storage -e MONGO_DB_PASSWD=OLsfTeam storage
storagestop:
	sudo docker stop storage