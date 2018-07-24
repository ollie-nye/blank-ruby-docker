# Ruby on Rails on Docker (on Mac)

This image boots an image of ruby and postgres

## Before running

### Database

Set your database config in db.yml

Usually only the database names will need changing

### Environment

In docker-compose.yml you may wish to change the port this is hosted on.

Note that changing this port will not change the port in go.sh

The script will still try to connect on 3040 when everything is finished

## Running

Start /go.sh and let it do it's thing. It will pull all necessary gems, and build the images. Ruby/rails will then be rebuilt to deal with the new gems.

Everything will be stopped, then started again. When everything is ready, a browser will open and should show the default Rails page

## After Running & Usage

After successfully running the script, remove it and the db.yml file from the directory.

### Connecting to the Docker instances

For the rails instance:
```bash
docker exec -i (-t) <parent_directory>_web_1 <command>
```

For the postgres instance:
```bash
docker exec -i (-t) <parent_directory>_db_1 <command>
```

To use the database in a console
```bash
docker exec -it <parent_directory>_db_1 /bin/bash
psql -h localhost -U postgres
```
