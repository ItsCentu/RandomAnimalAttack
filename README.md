# Animal Spawn Script for FiveM

This script is a FiveM Lua script that spawns animals (deer, boar, coyote, and mountain lion) next to players every 5 minutes. The script can be enabled and disabled by the owner using the /as enable and /as disable commands.

Installation
Download the script and save it as animal_spawn.lua in your FiveM server's resources directory.

Open your server.cfg file and add the following line to the end:

start animal_spawn

Restart your FiveM server.

Usage
The owner of the script can enable and disable the script by using the /as enable and /as disable commands in the in-game chat.

The owner of the script is defined as the player with the server ID of 1. You can change this in the script by replacing the 1 in the following line with the server ID of the owner:

local owner = GetPlayerIdentifier(GetPlayerFromServerId(1))

License

This script is licensed under the MIT License.

Disclaimer
This script is provided "as is" without warranty of any kind. The author shall not be held liable for any damages arising from the use of this script.
