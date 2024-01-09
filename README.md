# 把管理器文件安装到`~/.tmux/plugins/tpm`之下 此前这些目录是不存在的
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install some tmux plugins
`prefix` + `I`

- 从github或者其他git库安装新的tmux插件
- 刷新TMUX环境


# install zsh & oh-my-zsh & thema

- sudo apt-get install zsh
- sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
- git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# lsp c++ 使用需要添加 编译选项

- cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
- move file compile_commands.json to root directory
