#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

# CAUTION: This script must be executed in the root document directory of the laravel project.

# As information: list active ports
sudo netstat -tulpn | grep LISTEN

# open terminal tabs (windows) for dev and serve processes
gnome-terminal --tab -- npm run dev
gnome-terminal --tab -- php artisan serve

# wait for the processes in the gnome-terminal to launch
seq 5 -1 1 | while read i; do echo -en "\rWaiting ... $i";sleep 3; done
echo ""

# check if website is up (expects "HTTP/1.1 200 OK")
INPUT=$(curl -Is localhost:8000 | head -1)
ISOK="HTTP/1.1 200 OK"

if [[ -z "$INPUT" ]]
then
  echo -e "${RED}localhost:8000 is down.${NC}"
else
  echo "ok"
fi

# if [[ -z "$INPUT" ]] then
#  echo -e "localhost is down."
# else
#  echo "localhost is up :-)"
# fi

# elif [[ "$INPUT" != *"$ISOK"* ]] then
#    echo "${RED}$INPUT${NC}";
