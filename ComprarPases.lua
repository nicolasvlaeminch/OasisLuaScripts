local IDS = 9000100

function Items(event, player, item)
	if (player:IsInCombat() == true) then
			player:SendAreaTriggerMessage("U can't use this while u are in combat!")
	else
			Item_gossip_legendary(item, player)
	end
end

function Item_gossip_legendary(item, player)

    player:GossipMenuAddItem(2,"Hola, "..player:GetName().." |cff262522puedes cambiar tus articulos por una Pases de Batalla y comprar mejor equipo con ellos, seleccione la opción que desee:\n", 0, 0)
	player:GossipMenuAddItem(1,"|Tinterface/Icons/inv_misc_note_02:30:30:-25:0|tPase de Batalla Oasis I (PvE)\nNecesitas:\n|Tinterface/Icons/spell_holy_championsbond:25|t 500 Distintivos Oasis\n|Tinterface/Icons/inv_elemental_primal_fire:25|t 150 Fuego primigenio", 0, 1, false, "|n |TInterface/RAIDFRAME/ReadyCheck-Ready:20|tNotificación |TInterface/RAIDFRAME/ReadyCheck-Ready:20|t|n|n|cffffff00 "..player:GetName().."|n|n|cffffffff¿Estas seguro de hacer el cambio? |n|n |cff0CD20FSi haces el cambio recibiras: |n|n |Tinterface/Icons/inv_misc_note_02:30|t |cffffff00Pase de Batalla Oasis I (PvE)")
	player:GossipMenuAddItem(1,"|Tinterface/Icons/inv_misc_note_02:30:30:-25:0|tPase de Batalla Oasis II (PvE)\nNecesitas:\n|Tinterface/Icons/inv_misc_note_02:25|t Pase de Batalla Oasis I (PvE)\n|Tinterface/Icons/spell_holy_championsbond:25|t 1000 Distintivos Oasis\n|Tinterface/Icons/inv_elemental_primal_fire:25|t 150 Fuego primigenio\n|Tinterface/Icons/inv_elemental_primal_water:25|t 150 Agua primigenia", 0, 2, false, "|n |TInterface/RAIDFRAME/ReadyCheck-Ready:20|tNotificación |TInterface/RAIDFRAME/ReadyCheck-Ready:20|t|n|n|cffffff00 "..player:GetName().."|n|n|cffffffff¿Estas seguro de hacer el cambio? |n|n |cff0CD20FSi haces el cambio recibiras: |n|n |Tinterface/Icons/inv_misc_note_02:30|t |cffffff00Pase de Batalla Oasis II (PvE)")
	player:GossipMenuAddItem(1,"|Tinterface/Icons/inv_misc_note_02:30:30:-25:0|tPase de Batalla Oasis III (PvE)\nNecesitas:\n|Tinterface/Icons/inv_misc_note_02:25|t Pase de Batalla Oasis II (PvE)\n|Tinterface/Icons/spell_holy_championsbond:25|t 1500 Distintivos Oasis\n|Tinterface/Icons/inv_elemental_primal_fire:25|t 150 Fuego primigenio\n|Tinterface/Icons/inv_elemental_primal_water:25|t 150 Agua primigenia\n|Tinterface/Icons/inv_elemental_primal_shadow:25|t 150 Sombra primigenia", 0, 3, false, "|n |TInterface/RAIDFRAME/ReadyCheck-Ready:20|tNotificación |TInterface/RAIDFRAME/ReadyCheck-Ready:20|t|n|n|cffffff00 "..player:GetName().."|n|n|cffffffff¿Estas seguro de hacer el cambio? |n|n |cff0CD20FSi haces el cambio recibiras: |n|n |Tinterface/Icons/inv_misc_note_02:30|t |cffffff00Pase de Batalla Oasis III (PvE)")
	player:GossipSendMenu(1, item)
end

function Items_select_legendary(event, player, item, sender, intid, code)
	if (intid == 1) then
		if (player:HasItem(29434, 500) and player:HasItem(21884, 150)) then
			player:RemoveItem(29434, 500)
			player:RemoveItem(21884, 150)
			player:AddItem(80000)
			player:SendBroadcastMessage("|cffDAF020Has recibido tu Pase de Batalla satisfactoriamente.")
			player:GossipComplete()
		elseif player:HasItem(80000, 1) then
			player:SendBroadcastMessage("|cffDAF020Ya tienes este Pase de Batalla.")
			player:GossipComplete()
		else
			player:SendBroadcastMessage("|cffDAF020No cumples los requisitos de la compra.")
			player:GossipComplete()
		end
	elseif (intid == 2) then
		if (player:HasItem(29434, 1000) and player:HasItem(21884, 150) and player:HasItem(21885, 150) and player:HasItem(80000, 1)) then
			player:RemoveItem(29434, 1000)
			player:RemoveItem(21884, 150)
			player:RemoveItem(21885, 150)
			player:AddItem(80001)
			player:SendBroadcastMessage("|cffDAF020Has recibido tu Pase de Batalla satisfactoriamente.")
			player:GossipComplete()
		elseif player:HasItem(80001, 1) then
			player:SendBroadcastMessage("|cffDAF020Ya tienes este Pase de Batalla.")
			player:GossipComplete()
		else
			player:SendBroadcastMessage("|cffDAF020No cumples los requisitos de la compra.")
			player:GossipComplete()
		end
	elseif (intid == 3) then
		if (player:HasItem(29434, 1500) and player:HasItem(21884, 150) and player:HasItem(21885, 150) and player:HasItem(22456, 150) and player:HasItem(80001, 1)) then
			player:RemoveItem(29434, 1500)
			player:RemoveItem(21884, 150)
			player:RemoveItem(21885, 150)
			player:RemoveItem(22456, 150)
			player:AddItem(80002)
			player:SendBroadcastMessage("|cffDAF020Has recibido tu Pase de Batalla satisfactoriamente.")
			player:GossipComplete()
		elseif player:HasItem(80002, 1) then
			player:SendBroadcastMessage("|cffDAF020Ya tienes este Pase de Batalla.")
			player:GossipComplete()
		else
			player:SendBroadcastMessage("|cffDAF020No cumples los requisitos de la compra.")
			player:GossipComplete()
		end
	elseif (intid == 0) then
			Item_gossip_legendary(item, player)
	end
end

RegisterCreatureGossipEvent(IDS, 1, Items)
RegisterCreatureGossipEvent(IDS, 2, Items_select_legendary)