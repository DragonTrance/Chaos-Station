/datum/job
	///With this set to TRUE, the loadout will be applied before a job clothing will be
	var/no_dresscode = FALSE
	///A list of slots that can't have loadout items assigned to them if no_dresscode is applied, used for important items such as ID, PDA, backpack and headset
	var/list/blacklist_dresscode_slots
	///Is this job veteran only? If so, then this job requires the player to be in the veteran_players.txt
	var/veteran_only = FALSE

// Misc
/datum/job/assistant
	no_dresscode = TRUE
	blacklist_dresscode_slots = list(ITEM_SLOT_EARS,ITEM_SLOT_BELT,ITEM_SLOT_ID,ITEM_SLOT_BACK) //headset, PDA, ID, backpack are important items
