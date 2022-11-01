/*
	These are simple defaults for your project.
 */

world
	fps = 20
	icon_size = 32	// 32x32 icon size by default

	view = "23x13"

	maxx = 25
	maxy = 25
	maxz = 1


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8

/obj/item
	icon = 'icons/obj/items/dev.dmi'

/mob
	icon = 'icons/mobs/human.dmi'

/turf
	icon = 'icons/turf/floor.dmi'

/world/New()
	. = ..()
	new/obj/item(locate(4, 4, 1))

/client/New()
	. = ..()
	var/mob/human/NewHuman = new(locate(rand(1, world.maxx), rand(1, world.maxy), 1))
	mob = NewHuman
