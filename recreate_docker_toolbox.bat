@echo off

ECHO ***************************************
ECHO Docker�}�V�� default �̍č쐬�����s���܂�
ECHO ���̏����ɂ���đS�Ă�Docker�C���[�W���폜����邽�߁A�ēx�eDocker�C���[�W���č쐬����K�v������܂��B
ECHO Docker�C���[�W��ۑ�����ۂ́ABash�R���\�[������ docker_save_images.sh �����s���A
ECHO �{�R�}���h���s�������docker_load_images.sh �����s���Ă��������B
ECHO ***************************************

SET /P ANSWER="������Docker�}�V���idefault�j�̍č쐬�����{���Ă���낵���ł��� (Y/N)�H:"

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)

ECHO �������������܂����B
EXIT


:yes



.\create_docker_machine.bat