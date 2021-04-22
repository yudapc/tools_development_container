#!/bin/bash
echo "STOP My Development Tools"
echo "Please select:"
echo "1. sonarqube"
echo "2. development tools (postgres, mysql, redis)"
echo "3. exit"
echo ""
read service
if [[ ($service -eq "1") ]]
then
  echo "Stop sonarqube"
  docker-compose -f sonarqube.yml down -v
fi
if [[ ($service -eq "2") ]]
then
  echo "Stop development tools (postgres, mysql, redis)"
  docker-compose down -v
fi
if [[ ($service -eq "3") ]]
then
  echo "Bye"
  exit 0
fi