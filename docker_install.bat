@ECHO Docker Toolbox���_�E�����[�h�E�C���X�g�[�����܂��B
@set DOCKER_TOOLBOX_VERSION=19.03.1
@curl -L -o "DockerToolbox-%DOCKER_TOOLBOX_VERSION%.exe" https://github.com/docker/toolbox/releases/download/v%DOCKER_TOOLBOX_VERSION%/DockerToolbox-%DOCKER_TOOLBOX_VERSION%.exe

@ECHO Docker Toolbox�̃C���X�g�[�����N�������܂��B
.\DockerToolbox-%DOCKER_TOOLBOX_VERSION%.exe