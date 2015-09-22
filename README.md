## Git Prompt

### Preview

![Git Prompt Preview](https://raw.github.com/xhs/git-prompt/master/preview.png)

### Installation

```bash
mkdir -vp ~/.bash
cd ~/.bash
git clone git://github.com/xhs/git-prompt.git
```

Edit your `~/.bash_profile` or `~/.profile` and add the following:

```bash
source ~/.bash/git-prompt/git-prompt.sh
export PS1="\u@\H: \W \$git_branch\$git_dirty > "
```

### License

[BSD 2-Clause](https://opensource.org/licenses/BSD-2-Clause)
