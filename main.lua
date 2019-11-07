
function GetBagSlots()
	numBagSlots = GetNumberOfBagSlots()
	for i=0, 4 do
		for x=1, numBagSlots do
			itemID = GetContainerItemID(i, x)
			if itemID ~= nil then
				DEFAULT_CHAT_FRAME:AddMessage( (select(2, GetItemInfo(itemID))) );
			end
		end
	end
end

function GetNumberOfBagSlots() 
	total = 0
	for x=0, 4 do
		total = total + GetContainerNumSlots(x)
	end
	return total
end

function GreetTheWorld()
    DEFAULT_CHAT_FRAME:AddMessage( GetContainerItemID(1, 1));
end

StaticPopupDialogs["EXAMPLE_HELLOWORLD"] = {
    text = "Do you want to greet the world today?",
    button1 = "Yes",
    button2 = "No",
    OnAccept = function()
        GetBagSlots()
    end,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
    preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
  }

  StaticPopup_Show ("EXAMPLE_HELLOWORLD")
