# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# Default Editor
export EDITOR='subl'
export GIT_EDITOR='subl'

# Set architecture flags
export ARCHFLAGS="-arch arm64"

# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# export PATH=$PATH:~/PUT_YOUR_USERNAME_HERE/.bin
