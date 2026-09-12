#!/bin/bash
# ============================================================
# FFmpeg 定制配置 - 唯一配置入口
# 修改此文件后 push 即可触发重新构建
# ============================================================

# FFmpeg 版本（稳定版）
export FFMPEG_VERSION="7.1"

# configure 参数 - 极简白名单模式
# 注意：所有 enable 项使用单独参数，不要用逗号分隔（交叉编译时逗号分隔可能不生效）
export FF_CONFIGURE="
--disable-debug
--disable-doc
--disable-ffplay
--enable-static
--disable-shared
--disable-network
--disable-autodetect
--disable-decoders
--enable-gpl
--enable-version3
--enable-decoder=flac
--enable-decoder=h264
--enable-decoder=hevc
--enable-decoder=aac
--enable-decoder=aac_fixed
--enable-decoder=aac_latm
--enable-decoder=mp3
--enable-decoder=mp3float
--enable-decoder=mp4
--enable-decoder=ac3
--enable-decoder=eac3
--enable-decoder=truehd
--disable-encoders
--enable-encoder=mp3
--enable-encoder=aac
--disable-demuxers
--enable-demuxer=concat
--enable-demuxer=mov
--enable-demuxer=m4v
--enable-demuxer=flv
--enable-demuxer=mp3
--disable-muxers
--enable-muxer=flv
--enable-muxer=mp4
--enable-muxer=mp3
--disable-parsers
--enable-parser=h264
--enable-parser=hevc
--disable-protocols
--enable-protocol=concat
--enable-protocol=file
--disable-bsfs
--enable-bsf=h264_metadata
--enable-bsf=h264_mp4toannexb
--enable-bsf=hevc_mp4toannexb
--enable-bsf=hevc_metadata
--disable-filters
--enable-filter=concat
--enable-filter=aresample
--disable-iconv
--enable-small
"
