# to_wav
Tool for Windows to convert media files to wav files.

メディアファイルをwavファイルへ変換するWindows用ツールです。

# How to use

Select the media file you want to convert and drag & drop it into "to_wav.bat" to generate a wav file with the same file name in that directory.

変換したいメディアファイルを選択して「to_wav.bat」にドラッグ&ドロップすると、そのディレクトリ内に同じファイル名のwavファイルが生成されます。

# Notes

This software uses GPL's ffmpeg as an external application using exec and is distributed as two separate programs with the calling batch file.

本ソフトはexecを使用してGPLのffmpegを外部アプリケーションとして使用しており、呼び出し元のバッチファイルと2つの別々のプログラムとして配布しております。

ffmpegのソースコードは以下で配布しております。

https://github.com/BtbN/FFmpeg-Builds/releases/tag/autobuild-2023-08-14-12-53

execを使用したGPLの利用については以下で解説されています。

https://www.gnu.org/licenses/gpl-faq.ja.html#GPLPlugins
