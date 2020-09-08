@echo off

ECHO ***************************************
ECHO Dockerマシン default の再作成を実行します
ECHO この処理によって全てのDockerイメージが削除されるため、再度各Dockerイメージを再作成する必要があります。
ECHO Dockerイメージを保存する際は、Bashコンソールから docker_save_images.sh を実行し、
ECHO 本コマンド実行完了後にdocker_load_images.sh を実行してください。
ECHO ***************************************

SET /P ANSWER="すぐにDockerマシン（default）の再作成を実施してもよろしいですか (Y/N)？:"

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)

ECHO 処理を取り消しました。
EXIT


:yes



.\create_docker_machine.bat