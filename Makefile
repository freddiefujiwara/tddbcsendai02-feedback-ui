setup:
	@git submodule init
	@git submodule update
	@git submodule foreach 'git pull origin master'
	@git submodule foreach 'npm install'

.PHONY: setup
