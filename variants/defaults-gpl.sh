#!/bin/bash
# 引用集中配置文件（修改 FFmpeg 编译参数请编辑根目录 ffmpeg-custom-config.sh）
source "$(dirname "${BASH_SOURCE[0]}")/../ffmpeg-custom-config.sh"

FF_CFLAGS=""
FF_CXXFLAGS=""
FF_LDFLAGS=""
# 使用集中配置中指定的稳定版本
GIT_BRANCH="release/${FFMPEG_VERSION}"
LICENSE_FILE="COPYING.GPLv3"
