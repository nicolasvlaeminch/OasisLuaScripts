function MurlocOnDisfraz(event, player, command, unit)

	if command == "oasis" then
        if (player:IsInCombat() == true) then
			player:SendAreaTriggerMessage("¡No puedes hacer esto en combate!");
			player:SendBroadcastMessage("¡No puedes hacer esto en combate!");
			return false
		else
			MenuOasis(event, player);
			return false
		end
	end
end

TeleportLocations = {
 -- [TeamId] = {Map, X, Y, Z, Orientation}
 [0] = {0, -14741.474609, -81.844604, 1.286968, 4.509714},
 [1] = {0, -14463.599609, -116.851288, 0.594881, 3.897108},
 [2] = {0, -14428.801758, -303.113770, 0.695193, 4.101315},
 [3] = {0, -14428.801758, -303.113770, 0.695193, 4.101315},
 [4] = {0, -14853.329102, -401.939667, 0.433150, 0.995070},
 [5] = {0, -14759.939453, -335.305878, 2.989146, 5.848834},
 [6] = {0, -14672.291992, -229.485825, 4.763613, 2.636554},
 }
 
function MenuOasis(event, player)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface\\icons\\spell_shadow_teleport:40:40:-25:0|t Shop|r", 0, 15);
	player:GossipMenuAddItem(0, "|TInterface\\Icons\\ability_dualwield:40:40:-25:0|t PvP Zone|r", 0, 17);
	player:GossipMenuAddItem(0, "|TInterface\\Icons\\achievement_arena_2v2_3:40:40:-25:0|t Custom Raids|r", 0, 18);
    player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_box_02:40:40:-25:0|t Bank|r", 0, 20);
    player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_food_christmasfruitcake_01:40:40:-25:0|t Food|r", 0, 25);

    -- player:GossipMenuAddItem(0, "|TInterface\\icons\\achievement_reputation_01:40:40:-25:0|t Cerrar|r", 0, 1);
    -- Room for more premium things
    player:GossipSendMenu(1, player, 100)
end

function MenuRaids(event, player)
    player:GossipClearMenu()
	player:GossipMenuAddItem(0, "|TInterface\\icons\\achievement_boss_ragnaros:30:30:-25:0|t |cFF009999Molten Core - [Set Oasis I (PvE)]|r", 0, 30);
	player:GossipMenuAddItem(0, "|TInterface\\Icons\\achievement_boss_hakkar:30:30:-25:0|t |cFF009999Zul'Gurub - [Set Oasis II (PvE)]|r", 0, 35);
	player:GossipMenuAddItem(0, "|TInterface\\Icons\\achievement_boss_cthun:30:30:-25:0|t |cFF009999Ahn'Qiraj - [Set Oasis III (PvE)]|r", 0, 40);

    -- player:GossipMenuAddItem(0, "|TInterface\\icons\\achievement_reputation_01:40:40:-25:0|t Cerrar|r", 0, 1);
    -- Room for more premium things
    player:GossipSendMenu(1, player, 100)
end

function TitanMenuSelect(event, player, _, sender, intid, code)
    if (intid == 1) then                     -- Close the Gossip
        player:GossipComplete();
	elseif (intid == 15) then  
		player:Teleport(0, 4296.501465, -2763.406250, 16.4355, 3.719);
		player:GossipComplete();
	elseif (intid == 17) then
		player:CastSpell(player, 32612, true)
		local map, x, y, z, o = table.unpack(TeleportLocations[math.random(1, #TeleportLocations)])
		player:Teleport(map, x, y, z, o)
		player:GossipComplete();
	elseif (intid == 18) then
		MenuRaids(event, player);
	elseif (intid == 20) then 
        player:SendShowBank(player);
        player:GossipComplete();
	elseif (intid == 25) then 	
        player:AddItem(21215, 20);
        player:GossipComplete();
	elseif (intid == 30) then
		player:Teleport(230, 1119.534790, -460.462524, -103.141762, 3.523782);
		player:GossipComplete();
	elseif (intid == 35) then
		player:Teleport(0, -11916.236328, -1214.786133, 92.286797, 4.725263);
		player:GossipComplete();
	elseif (intid == 40) then
		player:Teleport(1, -8238.423828, 1994.734619, 129.071854, 0.882685);
		player:GossipComplete();
	end
end


RegisterPlayerEvent(42, MurlocOnDisfraz)
RegisterPlayerGossipEvent(100, 2, TitanMenuSelect)  -- Register Event for Gossip Select