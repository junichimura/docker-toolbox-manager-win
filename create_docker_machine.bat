@echo off

SET /P MACHINE_NAME="�쐬����Docker�}�V���̖��O����͂��Ă�������(���w��: default): "
if "%MACHINE_NAME%"=="" (SET MACHINE_NAME=default)

SET /P GB_SIZE="��GB�Ńf�B�X�N���쐬���܂����H(���w��: 100): "
if "%GB_SIZE%"=="" (SET GB_SIZE=100)

SET /P SHARE_DISK="���L�t�H���_�͂ǂ���ݒ肵�܂����H(���w��: \\?\c:\Users:c/Users): "
if "%SHARE_DISK%"=="" (SET SHARE_DISK=\\?\c:\Users:c/Users)

echo �쐬����Docker�}�V����: %MACHINE_NAME%
echo �f�B�X�N�T�C�Y: %GB_SIZE% GB
echo ���L�t�H���_�ݒ�: %SHARE_DISK%

SET /P ANSWER="��L�̐ݒ��Docker�}�V�����쐬���Ă���낵���ł��� (Y/N)�H: "

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)

ECHO �������������܂����B
timeout 3
EXIT


:yes

docker-machine -D create -d virtualbox --virtualbox-disk-size "%GB_SIZE%000" --virtualbox-share-folder "%SHARE_DISK%" %MACHINE_NAME%