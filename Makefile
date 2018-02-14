dump-lua-table: ## Dump a tas as Bizhawk's joypad
	lua -l dump -e "d = Dump('$(FILE)'); d:process('$(SECTION)'); d:write();"