## terminal
Alacrity
关联文件: .config/alacrity/

## tmux
oh-my-tmux
外加对 status line 样式的修改
[原 github 链接](https://github.com/Jaxx4Fun/.tmux/blob/master/.tmux.conf.local)

## zsh
oh-my-zsh
powerlevel10k
一定要修改终端的字体, 使之支持图标

## nvim
- 插件管理器
  lazyVim 非常好用,添加插件只需要在 lua/plugins/新建一个任意文件名的.lua 文件,
  然后再 return {"github_author/repository_name", opt = {进行设置}}
  (最好不要修改 config 中的 lua 文件, 只修改自己的 plugin)
  **需要 Node.js 环境, 需要 npm, 需要 openSSL**

- 额外插件 
  支持 markdown 
  - vim-markdown
    用于高亮, 折叠, 更好地编辑 markdown 源文件
  - markdown-preview
    用于 preview
    **需要 yarn, 需要手动安装**
    [原 github 链接](https://github.com/iamcco/markdown-preview.nvim)
    > cd ~/.local/share/nvim/site/pack/packer/start/
    > git clone https://github.com/iamcco/markdown-preview.nvim.git
    > cd markdown-preview.nvim
    > yarn install
    > yarn build
- lazyVim的配置
  lazyVim下载的所有插件都在:`~/.local/share/nvim/lazy``目录下
  `~/.config/nvim/stylua.toml`配置文件无法覆盖`~/.local/share/nvim/lazy/lazy.nvim/stylua.toml`
  
