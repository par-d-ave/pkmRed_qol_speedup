SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
    db 22, SANDSHREW
    db 25, RHYHORN
    db 22, BELLSPROUT
    db 24, EXEGGCUTE
    db 31, MEOWTH
    db 25, EXEGGCUTE
    db 31, VULPIX
    db 30, MAGMAR
    db 23, PINSIR
ENDC
IF DEF(_BLUE)
	db 22, NIDORAN_F
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, NIDORINA
	db 25, EXEGGCUTE
	db 31, NIDORINO
	db 30, PARASECT
	db 23, PINSIR
ENDC
	db 23, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
