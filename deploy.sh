#!/bin/bash
docker login -u rajkumar2128  -p dckr_pat_Hx7I1qSP_Ol23ZeCgUbtnJ9PMAQ

if [ $GIT_BRANCH == "origin/dev" ]; then
       sh 'chmod +x build.sh'
       sh './build.sh'

        docker tag test rajkumar2128/dev
        docker push rajkumar2128/dev

elif [ $GIT_BRANCH == "origin/main" ]; then
        sh 'chmod +x build.sh'
        sh './build.sh'

        docker tag test rajkumar2128/prod
        docker push rajkumar2128/prod

else
        echo "failed"
fi 
