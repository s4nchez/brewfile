
if [[ -x '/usr/libexec/java_home' ]]; then
	export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')
	export JDK_HOME=$JAVA_HOME
	export PATH="$JAVA_HOME/bin:$PATH"
fi

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

if [ -f ~/antigen.zsh ]; then
	source ~/antigen.zsh

	antigen use oh-my-zsh
	antigen bundle git
	antigen bundle command-not-found
	antigen bundle zsh-users/zsh-syntax-highlighting

	antigen theme bhilburn/powerlevel9k powerlevel9k
	
	antigen apply
fi
