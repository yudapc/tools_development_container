#!/bin/bash
echo "START My Development Tools"
echo "Please select:"
echo "1. sonarqube"
echo "2. development tools (postgres, mysql, redis)"
echo "3. exit"
echo ""
read service
if [[ ($service -eq "1") ]]
then
  echo "Run sonarqube"
  docker-compose -f sonarqube.yml up -d
fi
if [[ ($service -eq "2") ]]
then
  echo "Run development tools (postgres, mysql, redis)"
  docker-compose up -d
fi
if [[ ($service -eq "3") ]]
then
  echo "Bye"
  exit 0
fi