@ECHO Docker Toolboxをダウンロード・インストールします。
@set DOCKER_TOOLBOX_VERSION=19.03.1
@curl -L -o "DockerToolbox-%DOCKER_TOOLBOX_VERSION%.exe" https://github.com/docker/toolbox/releases/download/v%DOCKER_TOOLBOX_VERSION%/DockerToolbox-%DOCKER_TOOLBOX_VERSION%.exe

@ECHO Docker Toolboxのインストーラを起動させます。
.\DockerToolbox-%DOCKER_TOOLBOX_VERSION%.exe