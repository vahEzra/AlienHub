local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "alienHub Loading Menu",
   LoadingTitle = "alienHub Free Version",
   LoadingSubtitle = "by Chinhooks_DT",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "alienHub_System"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "alienHub Key",
      Subtitle = "Key System",
      Note = "Currently, use key: Free (for the new opening of alienHub.",
      FileName = "alienHub_Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Free"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "alienHub Loader",
   Content = "Thank you for using alienHub, have a good time!",
   Duration = 6.5,
   Image = 73480914475010,
   Actions = { -- Notification Buttons

},
})

RayField:Notify({
      Title = "Privacy Notification",
      Content = "Your information is safe with us.",
      Duration = 6.5,
      Image = 88893112707192,
      
      Actions = {
   }
   })

local Tab = Window:CreateTab("Player", 18719810838) -- Title, Image
local Slider = Tab:CreateSlider({
   Name = "Speed Changer",
   Range = {0, 250},
   Increment = 10,
   Suffix = "Humanoid.WalkSpeed",
   CurrentValue = 16,
   Flag = "Slider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "JumpPower Changer",
   Range = {0, 250},
   Increment = 10,
   Suffix = "Humanoid.JumpPower",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Administrator Name",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Humanoid.DisplayName = "[👑] " .. game.Players.LocalPlayer.DisplayName
   end,
})
