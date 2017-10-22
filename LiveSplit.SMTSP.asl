state("megaten")
{
	bool noControl : 0x000B39F0, 0x0, 0x268, 0x8;
	int events: 0x0B3C24;
}

init
{
	vars.doStart = false;
}

update
{
	vars.doStart = false;
	if (!current.noControl && old.noControl && current.events == 3)
	{
		vars.doStart = true;
	}
}

start
{
	return vars.doStart;
}