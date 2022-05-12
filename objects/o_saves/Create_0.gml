

#macro SAVEFILE "Save.sav"

file_delete("Save.sav")
file_delete("Save.dat")
file_delete(SAVEFILE)

if(room == StartScreen) {
	audio_play_sound(a_intromusic, 1, true)
}