#!/bin/sh

hereRelative=`dirname ${0}`
here=`cd ${hereRelative};pwd`
echo $here

# ここを書き換えてプロジェクト名を定義する
PROJECT_NAME= # dockerのコンテナ名になるので大文字禁止
USERNAME_FIRST=
EMAIL_FIRST=

isEmptyName="${PROJECT_NAME}${USERNAME_FIRST}${EMAIL_FIRST}"

if [ "" = "${PROJECT_NAME}" ];then

echo "project name is empty"

elif [ "" = "${USERNAME_FIRST}" ];then

echo "first user name is empty"

elif [ "" = "${EMAIL_FIRST}" ];then

echo "first email is empty"

else

sed -i -e "s/PROJECT_NAME/${PROJECT_NAME}/g" ${here}/ad.sh
sed -i -e "s/PROJECT_NAME/${PROJECT_NAME}/g" ${here}/../docker-compose.yml
sed -i -e "s/FIRST_AUTHOR_NAME/${USERNAME_FIRST}/g" ${here}/../LICENSE
sed -i -e "s/FIRST_AUTHOR_NAME/${USERNAME_FIRST}/g" ${here}/../README.md

cd ${here}/..
rm -rf .git
git init
git config --local user.name ${USERNAME_FIRST}
git config --local user.email ${EMAIL_FIRST}

chmod 644 ${0}
git add .
git commit -m "init"

fi
