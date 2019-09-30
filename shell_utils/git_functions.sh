#!/bin/bash

#curl -u 'nyeates' https://api.github.com/user/repos -d '{"name":"projectname","description":"This project is a test"}'
#git remote add origin git@github.com:nyeates/projectname.git
#git push origin master
#github token: 69358761e1305f1c3d7908989e2206e20bd70da6
GITHUB_PERSONAL_TOKEN="69358761e1305f1c3d7908989e2206e20bd70da6"
GITHUB_USERNAME="CompewterTutor"

function ghub_create_repository() {
    if [-z $GITHUB_PERSONAL_TOKEN]
        then
            read
        

}