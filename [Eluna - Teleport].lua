	local itemid = 85002
    function TELEPORT_1(event, player, item)
            if (player:IsInCombat() == true) then
                    player:SendAreaTriggerMessage("U can't use this while u are in combat!")
            else
                    TELEPORT(item, player)
            end
    end

local vip = 45924


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
	   

-- |cffF60000mantenimiento



    function TELEPORT(item, player) -- Home Page
	player:Dismount()
	player:GossipMenuAddItem(2, "|Tinterface/Icons/inv_misc_enggizmos_27:30|t [SHOP]|t|t  " , 1,  1, false, "Deseas ir a la shop?")
	player:GossipMenuAddItem(2, "|Tinterface/Icons/inv_misc_gem_diamond_02:30|t [Area VIP]|t|t  " , 1,  3, false, "Deseas ir a la Area VIP?")
	player:GossipMenuAddItem(2, "|Tinterface/CURSOR/Attack:30|t [Gurubashi Arena]|t|t  " , 1,  4, false, "Deseas ir a la Zona JcJ?")	
	player:GossipMenuAddItem(2, "|Tinterface/Icons/ability_dualwield:30|t [Duel Zone]|r", 1, 2, false, "Deseas ir a la zona de duelos?")
	player:GossipMenuAddItem(2, "|Tinterface/Icons/inv_valentinepinkrocket:30|t [Zona de Monturas] |r", 1, 7, false, "Deseas ir a probar monturas?")
	player:GossipMenuAddItem(2, "|Tinterface/Icons/achievement_arena_2v2_3:30|t [Isla de la Muerte]|r |r|n           |cffff0000Jugadores en esta isla: |cff000000 () ", 1, 8, false, "Deseas ir la Area PvP?")
    player:GossipMenuAddItem(2, "|Tinterface/Icons/ability_hunter_beasttaming:30|t [Pet Zone (Only Hunter)]|r", 1, 9, false, "Deseas ir al establo de mascostas?")
	player:GossipSendMenu(1, item)
    end
     
    function Tele_Select(event, player, item, sender, intid, code, eventId, delay, repeats)
	if (intid == 999) then
	TELEPORT(item, player)
	
	elseif (intid == 1) then
	player:Teleport(1, -2299.48, -354.98, -9.4, 0.9)
	
	elseif (intid == 2) then
	player:Teleport(530, -250.60, 968.94, 84.33, 4.7)
	
	elseif (intid == 3) then
	if(player:HasItem(vip) == true) then
	player:Teleport(571, 1220.43, -4873.81, 408.80, 3.0)
	else
	player:SendAreaTriggerMessage("|cffE7560EACCESO DENEGADO")
	player:SendBroadcastMessage("|cff18D50CInformation: |cffE7E70ENecesitas tener "..GetItemLink(vip).." para poder ingresar a la Area VIP.")
	end
	
	elseif (intid == 4) then
	player:Teleport(0, -13230.46, 224.31, 32.51, 1.13)
	
	elseif (intid == 7) then
	player:Teleport(0, -12022.411, -1700.82, 39.68, 0.5)
	--player:SendBroadcastMessage("De momento se encuentra en revisión, una ves este listo se habilitara su ingreso.")
	
	
	elseif (intid == 8) then
	player:CastSpell(player, 32612, true)
	local map, x, y, z, o = table.unpack(TeleportLocations[math.random(1, #TeleportLocations)])
	player:Teleport(map, x, y, z, o)
	
	
	

	elseif (intid == 9) then
	if(player:HasSpell(1515)) then
	player:Teleport(0, -11062.93, -1787.49, 52.60, 3.1)
	else
	player:SendAreaTriggerMessage("|cff6FE88CAlerta: |cffC3E86FNo eres Cazador.")
	end
	
	

		

		
	elseif (intid == 4) then -- Customs Zones

		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Achievement_Zone_Gilneas_02:30|t Monastery Scarlate - [Tier 11]", 1, 100)
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Achievement_Boss_Moorabi:30|t Gundrak - [Tier 12]", 1, 101)
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Achievement_Boss_Thorim:30|t Foso de Saron - [Tier 13] ", 1, 102)
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Achievement_Boss_Onyxia:30|t Sagrario de Obsidian - [Tier 14]", 1, 103)
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Achievement_Dungeon_Icecrown_IcecrownEntrance:30|t ICC - [Tier 15]", 1, 104)
		player:GossipMenuAddItem(1, "|Tinterface/Icons/misc_arrowleft:31:31:-15|t Home Page", 1,  999)
		player:GossipSendMenu(1, item)
		
		
		elseif (intid == 5) then -- World Bosses

			player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Ability_Shaman_FreedomWolf:25|t All Bosses - Cuna de Invierno", 1, 2000, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		--player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/achievement_leader_sylvanas:30|t Boss [Love Rosie]", 1, 2001, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		--player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/achievement_leader_ thrall:30|t Boss [Orco de Ultratumba]", 1, 2002, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
	--	player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/achievement_boss_nexus_prince_shaffar:30|t Boss [Voldemort]", 1, 203, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTier 1 Ten mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		--player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Ability_Druid_TigersRoar:30|t Boss [Tiger Beast]", 1, 2004, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		--player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/T_RobotIcon:30|t Boss [Hellsing]", 1, 2005, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		--player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Ability_Mage_FrostJaw:30|t Boss [Rey Avatar]", 1, 2006, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/INV_WolfDraenor_FelMount:25|t Wolf Man", 1, 2007, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/ClassIcon_DemonHunter:25|t Demon Hunter", 1, 208, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/Achievement_Boss_Ra_Den:25|t Ymir", 1, 209, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTen mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		player:GossipSendMenu(1, item)
		
		
		elseif (intid == 6) then -- Customs Zones

		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/INV_Sword_1h_DraenorCrafted_D_02_C_horde:30|t Weapons - [Tier 1]", 1, 105, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTier 1 Ten mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/INV_Sword_1h_DraenorHonorS2_C_01:30|t Weapons - [Tier 2]", 1, 106, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTier 2 Ten mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
		player:GossipMenuAddItem(2, "|Tinterface/Icons/misc_arrowright:30:30:-15:3|t |Tinterface/Icons/INV_Sword_1H_FelfireRaid_D_03:30|t Weapons - [Tier 3] ", 1, 107, false, "|cffffff00***Announcement***|n|n|cffffffffHi |cffffff00"..player:GetName()..", |cffffffffTier 3 Ten mucho cuidado, ve en grupo para que sea mas facíl. |n|n |cffff8080Buena Suerte!!")
			player:GossipSendMenu(1, item)
			
		
		elseif( intid == 100) then
		--player:Teleport(571, 1261.60, -4851.00, 215.76, 3.36)
		player:Teleport(0, 2877.35, -818.00, 160.33, 3.4)
		
		elseif( intid == 101) then
		player:Teleport(571, 6720.94, -4642.43, 450.07, 3.9)
		
		elseif( intid == 102) then
		player:Teleport(571, 5599.82, 2016.71, 798.04, 3.9)
		
		elseif( intid == 103) then
		player:Teleport(571, 3459.29, 262.86, -114.78, 3.2)
		
				
		elseif( intid == 104) then
		player:Teleport(571, 5801.94, 2075.80, 636.06, 3.55)
		
					elseif( intid == 105) then
		player:Teleport(1, -7008.32, -4346.92, 10.74, 6.17)
		
				elseif( intid == 106) then
		player:Teleport(1, -6938.01, -4852.59, 0.66, 1.6)
		
				elseif( intid == 107) then
		player:Teleport(1, -8897.49, -3564.77, 14.30, 1.79)
	
	
	elseif (intid == 200) then
            player:Teleport(571, 3498.67, 6926.47, 504.34, 1.6)
            player:GossipComplete()
			
			    elseif (intid == 201) then
            player:Teleport(0, -11842.84, -3199.86, -29.49, 3.2)
            player:GossipComplete()
			
			
			  elseif (intid == 202) then
            player:Teleport(571, 832.49, -5526.11, 0.9, 5.14)
            player:GossipComplete()
			
			elseif (intid == 203) then
            player:Teleport(530, 2867.58, 5904.708, 12.21, 2.40)
            player:GossipComplete()
			
						elseif (intid == 204) then
            player:Teleport(0, -6039.90, -2482.446, 311.03, 2.18)
            player:GossipComplete()
			
						elseif (intid == 205) then
            player:Teleport(530, -3672.32, -62.01, 237.78, 4.68)
            player:GossipComplete()
			
						elseif (intid == 206) then
            player:Teleport(571, 982.52, -4816.488, -72.441, 0.28)
            player:GossipComplete()
			
				elseif (intid == 207) then
            player:Teleport(1, -18.256, -264.32, 0.09, 2.4)
            player:GossipComplete()
			
				elseif (intid == 208) then
			player:Teleport(0, -4246.29, -3368.42, 230.84, 1.4)
			player:GossipComplete()
			
			elseif (intid == 2000) then
            player:Teleport(1, 6892.30664, -2306.60, 584.61, 3.30)
            player:GossipComplete()
			
								elseif (intid == 2007) then
            player:Teleport(1, -18.256, -264.32, 0.09, 2.4)
            player:GossipComplete()
			
									elseif (intid == 209) then
			player:Teleport(571, 390.18, -3059.88, 73.92, 2.77)
			player:GossipComplete()
	
	

    player:GossipSendMenu(1, item)
	elseif (intid == 100) then 

    player:GossipSendMenu(1, item)
   
    end
end
     
    RegisterCreatureGossipEvent(itemid, 1, TELEPORT_1)
    RegisterCreatureGossipEvent(itemid, 2, Tele_Select)
	--RegisterCreatureGossipEvent(itemid, 2, ZoneCheck.OnChange)