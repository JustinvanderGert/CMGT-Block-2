ms -= 1;

//if ms = 0, deduct 1 second
if (ms = 0)
{
	ms = 60
	seconds  -= 1;
}

//if seconds = -1, deduct 1 minute and reset seconds
if (seconds = -1)
{
	minutes -= 1;
	seconds = 59; 
}

// minutes overflow fixer
	if (seconds >= 60) 
	{
		minutes += 1;
		seconds -= 60;
	}
	
// halt timer when at 0:00
if (minutes = 0 and seconds = 0)
{
	minutes = 0;
	seconds = 0;
	ms = 0;
	
}
