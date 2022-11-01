/proc/REF(input)
	if(IsDatum(input))
		var/datum/thing = input
		return "\[[url_encode(thing.tag)]\]"
	return text_ref(input)
