#!/bin/bash

touch robot.txt;

git add .;
git commit -m "Archivo robot creado";
git push -u origin main --force;

git branch dev stg qa prod;
git checkout dev;
echo "walking()" >> file.txt;

git checkout main;

git add .;
git commit -m "Agregado walkin";
git push -u origin main --force;

git rebase dev;

git add .;
git commit -m "rebase";
git push -u origin dev --force;

git checkout stg;
touch robot_tests.txt;
echo "walking_test()\nTest complete!!" >> robot_tests.txt;

git add .;
git commit -m "robot walkin test";
git push -u origin stg --force;

git checkout main;
git rebase stg;
git checkout qa;
git rebase stg;

 git checkout prod;
 echo "SOME_PROD_VAR='PROD VALUE'
ROBOT_CREDENTIALS='SOME CONFIDENTIAL ROBOT CREDENTIALS'
WALK_CONFIG='SOME PROD WALKING CONFIGURATION'" >> robot.txt;
git add .;
git commit -m "Mucho texto agregado";
git push --force;

git branch dev_feature123 dev_feature321;
git checkout dev_feature123;
echo "left_leg_quick_walking()" >> robot.txt;
git add .;
git commit -m "left leg test";
git push --force;

git merge main;
git branch dev_feature321;
echo "right_leg_quick_walking()" >> robot.txt;
git add .;
git commit -m "right leg test";
git push --force;

git checkout main;
git merge dev_feature321;

