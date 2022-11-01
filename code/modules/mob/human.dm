/mob/human
	var/obj/item/held_item

/atom/proc/ClickOn(atom, params)

/mob/human/ClickOn(obj/item/atom, params)
	if(istype(atom, /obj/item) && !held_item)
		held_item = atom
		atom.loc = src

/mob/human/proc/DropItem()
	held_item.loc = loc
	held_item = null

/mob/human/verb/Drop()
	DropItem()