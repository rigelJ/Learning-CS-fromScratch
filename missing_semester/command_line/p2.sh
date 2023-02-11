######Fork 本课程网站的仓库#######
git clone https://github.com/missing-semester/missing-semester/tree/master

######将版本历史可视化并进行探索#######
git log --all --graph --decorate

#####是谁最后修改了 README.md文件？##########
 git blame _config.yml | grep "collection" | awk '{print $1}' | xargs git show

######尝试向仓库中添加一个文件并添加提交信息，然后将其从历史中删除#####
echo "some words" > foo.sh
git add .
git commit

 git filter-branch --force --index-filter\
 'git rm --cached --ignore-unmatch ./new.sh' \
 --prune-empty --tag-name-filter cat -- --all

 ###############从 GitHub 上克隆某个仓库，修改一些文件。当您使用 git stash 会发生什么？##########
git stash 会保存当前的修改，并清空暂存区
git stash apply恢复

#####请在 ~/.gitconfig 中创建一个别名，######\
[alias]
graph = log --all --graph --decorate --oneline
