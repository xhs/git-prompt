get_git_branch() {
    local branch
    if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
      if [[ "$branch" == "HEAD" ]]; then
        branch='detached*'
      fi
      git_branch="git:$branch"
    else
      git_branch=$'\b \b'
    fi
}

get_git_dirty() {
    local status=$(git status --porcelain 2> /dev/null)
    if [[ "$status" != "" ]]; then
      git_dirty="*"
    else
      git_dirty=""
    fi
}

PROMPT_COMMAND="get_git_branch; get_git_dirty; $PROMPT_COMMAND"
