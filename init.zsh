# init.zsh
#
# Copyright (c) 2013 Einar Uvsløkk
# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE

fpath=($HOME/.zsh/functions $fpath)
for libfile ($HOME/.zsh/lib/*.zsh) . $libfile
