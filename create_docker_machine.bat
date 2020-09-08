@echo off

SET /P MACHINE_NAME="作成するDockerマシンの名前を入力してください(未指定: default): "
if "%MACHINE_NAME%"=="" (SET MACHINE_NAME=default)

SET /P GB_SIZE="何GBでディスクを作成しますか？(未指定: 100): "
if "%GB_SIZE%"=="" (SET GB_SIZE=100)

SET /P SHARE_DISK="共有フォルダはどこを設定しますか？(未指定: \\?\c:\Users:c/Users): "
if "%SHARE_DISK%"=="" (SET SHARE_DISK=\\?\c:\Users:c/Users)

echo 作成するDockerマシン名: %MACHINE_NAME%
echo ディスクサイズ: %GB_SIZE% GB
echo 共有フォルダ設定: %SHARE_DISK%

SET /P ANSWER="上記の設定でDockerマシンを作成してもよろしいですか (Y/N)？: "

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)

ECHO 処理を取り消しました。
timeout 3
EXIT


:yes

docker-machine -D create -d virtualbox --virtualbox-disk-size "%GB_SIZE%000" --virtualbox-share-folder "%SHARE_DISK%" %MACHINE_NAME%