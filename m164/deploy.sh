if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
fi

echo "Starting the docker containers..."
docker compose up -d

echo "As long as docker-compose.yml wasn't changed you can use the following creds:"
echo " - Server: maria (or localhost:3306)"
echo " - User: root"
echo " - Password: toor"
echo " - Database: m164"
echo "mysql://root:toor@maria:3306/m164"
echo "open browser? [y/N]"
read -r open_browser
if [ "$open_browser" != "y" ]; then
  exit 0
fi

if [ -x "$(command -v xdg-open)" ]; then
  xdg-open http://localhost:8081
elif [ -x "$(command -v open)" ]; then
  open http://localhost:8081
fi