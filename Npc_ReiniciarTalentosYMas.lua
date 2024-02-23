local IDS = 200006

function combat_on_reiniciar_talentos(event, player, item)
		gossip_reiniciar_talentos(item, player);
end

function gossip_reiniciar_talentos(item, player)

    player:GossipMenuAddItem(7,"Bienvenido "..player:GetName().." puedo ayudarte a reiniciar tus talentos.\n\n", 0, 0);
	player:GossipMenuAddItem(1,"|Tinterface/Icons/inv_misc_book_04:30:30:-25:0|tReiniciar tus talentos.\n", 0, 1, false, "|cffffff00 ¡Atención "..player:GetName().."!|n|n|cffffffff¿Estás seguro que quieres reiniciar tus talentos?\n");
	player:GossipMenuAddItem(1,"|Tinterface/Icons/inv_misc_book_04:30:30:-25:0|tAprender: Doble especialización de talentos.\n", 0, 2);
	player:GossipMenuAddItem(1,"|Tinterface/Icons/inv_misc_book_04:30:30:-25:0|tSalir de combate.\n", 0, 3);
	
	player:GossipSendMenu(1, item);
end

function reiniciar_talentos_low(event, player, item, sender, intid, code)

	if (intid == 0) then
		gossip_reiniciar_talentos(item, player);
		
	elseif (intid == 1) then
		player:ResetTalents(true);
		player:SendAreaTriggerMessage("Tus talentos fueron reiniciados.");
		player:SendBroadcastMessage("Tus talentos fueron reiniciados.");
		player:GossipComplete();
		
	elseif (intid == 2) then
		if not (player:HasAchieved(2716)) then
			player:CastSpell(player, 63624, false);
			player:CastSpell(player, 47292, true);
			player:SendBroadcastMessage("|cffDAF020¡Prepárate para la batalla, ya eres un aventurero capaz de dominar más de una especialización de talentos!");
			player:GossipComplete();
		else
			player:SendAreaTriggerMessage("Ya reclamaste tu doble especialización de talentos.");
			player:SendBroadcastMessage("Ya reclamaste tu doble especialización de talentos.");
			player:GossipComplete();
		end
		
	elseif (intid == 3) then
        if (player:IsInCombat() == true) then
			player:ClearInCombat();
            player:SendAreaTriggerMessage("Ya no estás en combate.");
			player:SendBroadcastMessage("Ya no estás en combate.");
			player:GossipComplete();
        else
			player:SendAreaTriggerMessage("No estas en combate.");
			player:SendBroadcastMessage("No estas en combate.");
            player:GossipComplete();
        end
		
	end
end

RegisterCreatureGossipEvent(IDS, 1, combat_on_reiniciar_talentos)
RegisterCreatureGossipEvent(IDS, 2, reiniciar_talentos_low)
