-- local texture, itemCount, locked, quality, readable = GetContainerItemInfo(1,2);
-- DEFAULT_CHAT_FRAME:AddMessage(itemCount .. " stacked items in 2nd slot of bag 1.");
DEFAULT_CHAT_FRAME:AddMessage( (select(7, GetContainerItemInfo(1,1))) );
DEFAULT_CHAT_FRAME:AddMessage( GetContainerItemID(1, 1));
message("this addon blows");
message("things" .. (select(7, GetContainerItemInfo(1,1))));
message("stuff" .. GetContainerItemID(1, 1));
-- itemId = GetContainerItemID(0, 1);
-- DEFAULT_CHAT_FRAME:AddMessage(itemId);