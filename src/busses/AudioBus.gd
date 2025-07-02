extends Node
var banks := Array()
var ev: FmodEvent = null
func loadBusses():
	banks.append(FmodServer.load_bank("res://fmodBanks/Music.bank", FmodServer.FMOD_STUDIO_LOAD_BANK_NORMAL))
	banks.append(FmodServer.load_bank("res://fmodBanks/Music.strings.bank", FmodServer.FMOD_STUDIO_LOAD_BANK_NORMAL))
	banks.append(FmodServer.load_bank("res://fmodBanks/Sfx.bank", FmodServer.FMOD_STUDIO_LOAD_BANK_NORMAL))
	
func playEvent(event):
	ev = FmodServer.create_event_instance("event")
	event.start()
