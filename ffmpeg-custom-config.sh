#!/bin/bash
# ============================================================
# FFmpeg 自定义编译配置（集中管理）
# 修改此文件后 push 到仓库，会自动触发流水线重新构建
# ============================================================

FF_CONFIGURE="--disable-debug --disable-doc --disable-ffplay --enable-static --disable-shared --disable-network --disable-autodetect --disable-decoders --enable-gpl --enable-version3 --enable-decoder='flac,h264,hevc,aac*,mp3*,mp4,ac3,eac3,truehd' --disable-encoders --disable-demuxers --enable-demuxer='concat,mov,m4v,flv,mp3' --disable-muxers --enable-muxer='flv,mp4,mp3' --enable-encoder='mp3,aac' --disable-parsers --enable-parser='h264,hevc' --disable-protocols --enable-protocol='concat,file' --disable-bsfs --enable-bsf='h264_metadata,h264_mp4toannexb,hevc_mp4toannexb,hevc_metadata' --disable-filters --enable-filter='concat,aresample' --disable-iconv --enable-small"

# FFmpeg 稳定版本号（release/7.1）
FFMPEG_VERSION="7.1"
