--Voice reactions, by Glory!
soundreaction = {}
--VOICE COMMAND DEFINITION  MATRIX
local srlocal = {}
srlocal.sounds = {
  --For server administrators: actions with variations must come in the form of
  --file0.ogg, file1.ogg, file2.ogg ... fileN.ogg. In case of one file, N = 0.
  --{"cmd", "file",   N, transcription, help description},
	{"/ww", "yes",    8, "Yes",     "Agree with something. (Voice)"},
	{"/ss", "no",     6, "No",      "Disagree with something. (Voice)"},
	{"/dd", "thanks", 3, "Thanks!", "Thank someone. (Voice)"},
	{"/aa", "woah",   1, false    , "Get Scared. (Voice)"}
}

--Get ready to register the voice commands
for _, row in ipairs(srlocal.sounds) do
	local cmd = row[1]
    local sound = row[2]
	local delta = row[3]
	local cmsg = row[4]
	local description = row[5]
	--Register the voice commands
	minetest.register_chatcommand(cmd, {
		description = description,
		func = function(name, param)
			local player = minetest.get_player_by_name(name)
			if cmsg then
				minetest.chat_send_all("[Voice] "..name..": "..cmsg);
			end
			minetest.sound_play(sound..math.random(0,delta), {
				pos = player:getpos(),
				max_hear_distance = 10,
				gain = 1.0,
			})
		end
	})
end
