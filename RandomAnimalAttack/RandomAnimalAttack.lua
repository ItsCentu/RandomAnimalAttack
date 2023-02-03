local enabled = false

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)

    if enabled then
      Citizen.Wait(300000) -- wait 5 minutes (300000 milliseconds)

      -- Get all players
      players = GetPlayers()

      -- Loop through all players
      for _, player in pairs(players) do
        x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(player), true))
        animal = math.random(1, 4) -- choose a random number between 1 and 4

        if animal == 1 then
          -- spawn a deer
          RequestModel("a_c_deer")
          while not HasModelLoaded("a_c_deer") do
            Citizen.Wait(0)
          end

          animalPed = CreatePed(4, 0xD86B5A95, x + math.random(-5, 5), y + math.random(-5, 5), z, 0.0, true, false)
          SetEntityAsMissionEntity(animalPed, true, true)
        elseif animal == 2 then
          -- spawn a boar
          RequestModel("a_c_boar")
          while not HasModelLoaded("a_c_boar") do
            Citizen.Wait(0)
          end

          animalPed = CreatePed(4, 0xCE5FF074, x + math.random(-5, 5), y + math.random(-5, 5), z, 0.0, true, false)
          SetEntityAsMissionEntity(animalPed, true, true)
        elseif animal == 3 then
          -- spawn a coyote
          RequestModel("a_c_coyote")
          while not HasModelLoaded("a_c_coyote") do
            Citizen.Wait(0)
          end

          animalPed = CreatePed(4, 0x644AC75E, x + math.random(-5, 5), y + math.random(-5, 5), z, 0.0, true, false)
          SetEntityAsMissionEntity(animalPed, true, true)
        else
          -- spawn a mountain lion
          RequestModel("a_c_mtlion")
          while not HasModelLoaded("a_c_mtlion") do
            Citizen.Wait(0)
          end

          animalPed = CreatePed(4, 0x13B5F5A9, x + math.random(-5, 5), y + math.random(-5, 5), z, 0.0, true, false)
          SetEntityAsMissionEntity(animalPed, true, true)
        end
      end
    end
  end
end)

-- Function to enable the script
function enableAnimalSpawn()
  enabled = true
  TriggerEvent("chatMessage", "", {255, 255, 255}, "Animal spawn script enabled.")
end

-- Function to disable the script
function disableAnimalSpawn()
  enabled = false
  TriggerEvent("chatMessage", "", {255, 255, 255}, "Animal spawn script disabled.")
end

-- Command handler
RegisterCommand("as", function(source, args, rawCommand)
  if args[1] == "enable" then
    enableAnimalSpawn()
  elseif args[1