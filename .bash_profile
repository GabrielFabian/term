# Set branch name, dirty state, and color
export PS1="\[\033[36m\]\u\[\033[32m\]\w\[\033[33m\]\$(git_branch)\$(parse_git_dirty)\[\033[00m\]$"
export PATH="./node_modules/.bin:$PATH"
# Find dirty state
function parse_git_dirty {
  [[ -n "$(git status -s2> /dev/null)" ]] && echo "*"
}

# Get branch name
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -d 's/* \(.*\)/ (\1)/'
}


alias ll='ls -lGaf'

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
