local texture, itemCount, locked, quality, readable = GetContainerItemInfo(1,2);
DEFAULT_CHAT_FRAME:AddMessage(itemCount .. " stacked items in 2nd slot of bag 1.");
-- itemId = GetContainerItemID(0, 1);
-- DEFAULT_CHAT_FRAME:AddMessage(itemId);