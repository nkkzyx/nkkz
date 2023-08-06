_G.autoBuyDropper = false; --Active or Disable
_G.autoMergeDropper = false; --Active or Disable
_G.autoDepositDrops = false; --Active or Disable
_G.autoBuyRate = false; --Active or Disable
_G.autoCollectDrop = false; --Active or Disable
local remotePath = game:GetService("ReplicatedStorage").NetworkEvents;

spawn(function()
    	while _G.autoBuyDropper == true do
    	local args = { [1] = "BuyDropper"}
    	game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer(unpack(args))
    	wait(0) --Speed
	end
end)

spawn(function()
		while _G.autoMergeDropper == true do
		local args = { [1] = "MergeDropper"}
		game:GetService("ReplicatedStorage").NetworkEvents.RemoteEvent:FireServer(unpack(args))
		wait(0) --Speed
	end
end)

spawn(function()
		while _G.autoDepositDrops == true do
		local args = { [1] = "DepositDrops"}
		game:GetService("ReplicatedStorage").NetworkEvents.RemoteEvent:FireServer(unpack(args))
		wait(0) --Speed
	end
end)

spawn(function()
		while _G.autoBuyRate == true do
		local args = { [1] = "BuyRate"}
		game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer(unpack(args))
		wait(0) --Speed
	end
end)

spawn(function()
		while _G.autoCollectDrop == true do
		local args = { [1] = "CollectDrop", [2] = {
												[1] = 7,
												[2] = 43200}}
		game:GetService("ReplicatedStorage").NetworkEvents.RemoteEvent:FireServer(unpack(args))
		wait(0) --Speed
	end
end)