local display_text = Instance.new("ScreenGui")
local text = Instance.new("TextBox")
display_text.Name = "display_text"
display_text.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
display_text.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
display_text.ResetOnSpawn = false
text.Name = "text"
text.Parent = display_text
text.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
text.BorderColor3 = Color3.fromRGB(0, 0, 0)
text.BorderSizePixel = 0
text.Position = UDim2.new(0.14965035, 0, 0.904884338, 0)
text.Size = UDim2.new(0, 1001, 0, 20)
text.Font = Enum.Font.Unknown
text.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
text.PlaceholderText = "# entertext here"
text.Text = ""
text.TextColor3 = Color3.fromRGB(178, 178, 178)
text.TextSize = 14.000
text.TextXAlignment = Enum.TextXAlignment.Left
text.FocusLost:Connect(function()
	game.TextChatService:DisplayBubble(game.Players.LocalPlayer.Character.Head, text.Text)
end)
