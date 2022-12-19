# Modify originals and copy here.
back:
	cp -p ${HOME}/.config/nvim/init.lua .
	cp -rp ${HOME}/.config/nvim/lua/ .

install:
	mkdir ${HOME}/.config/nvim
	cp -p init.lua ${HOME}/.config/nvim/
	cp -rp lua/ ${HOME}/.config/nvim/
