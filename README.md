# Docker Toolbox Manager for Windows

## 本プロジェクトについて

本プロジェクトはWindows版のDocker Toolboxの操作を簡易的に行うバッチファイルを収めたプロジェクトです。

本プロジェクトのコマンドを利用することにより、デフォルト20GBで作成されるツールボックスのVMストレージを拡張したり、共有フォルダ設定を楽にします。

## ツールボックス環境の作成・dockerマシーン作成/再作成

* create_docker_machine.bat

Dockerマシーンを作成するバッチファイルです。

* docker_install.bat

Dockerツールボックスをインストールするためのバッチファイルです。

* recreate_docker_toolbox.bat

現在のDockerマシンを削除し、新しくDockerマシンを作成します。

本バッチファイルを実行する前に後述のシェルスクリプトでDockerイメージのバックアップを行うことをおすすめします。

## dockerイメージのバックアップとリストア（要bash環境）

* docker_load_images.sh

後述の`docker_save_images.sh`で出力したdockerイメージをロードするためのシェルスクリプトです。

こちらはBash環境で動作します。

* docker_save_images.sh

Dockerマシン内のイメージをホストマシンに保存するためのシェルスクリプトです。

先述の`docker_load_images.sh`を利用して、新しいDockerマシンにイメージを取り込めます。