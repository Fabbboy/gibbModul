if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
fi

echo "Starting the docker containers..."
docker-compose up -d || { echo 'Error: docker-compose up failed.' >&2; exit 1; }

echo "As long as docker-compose.yml wasn't changed you can use the following creds:"
echo " - Server: maria (or localhost:3306)"
echo " - User: root"
echo " - Password: toor"
echo " - Database: m164"
echo "mysql://root:toor@maria:3306/m164"