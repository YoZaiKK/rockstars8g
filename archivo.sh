#!/bin/bash

touch robot.txt;

git reset --hard;

git add .;
git commit -m "Archivo robot creado";
git push -u origin main;

git branch dev stg qa prod;
git checkout dev;
echo "walking()" >> file.txt;

git checkout main;

git add .;
git commit -m "Agregado walkin";
git push -u origin main;

git rebase dev;

git add .;
git commit -m "rebase";
git push -u origin dev;

git checkout stg;
touch robot_tests.txt;
echo "walking_test()\nTest complete!!" >> robot_tests.txt;

git add .;
git commit -m "robot walkin test";
git push -u origin stg;

git checkout main;
git rebase stg;
git checkout qa;
git rebase stg;

 




