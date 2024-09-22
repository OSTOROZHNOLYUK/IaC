mongostart:
	sudo docker compose -f docker/mongodb/mongodb.yaml up -d
mongostop:
	sudo docker compose -f docker/mongodb/mongodb.yaml down

nginxstart:
	sudo docker compose -f docker/compose.yaml up -d
nginxstop:
	sudo docker compose -f docker/compose.yaml down

storagestart:
	sudo docker run -itd -p 10502:10502 --rm --name storage -e MONGO_DB_PASSWD=OLsfTeam storage
storagestop:
	sudo docker stop storage