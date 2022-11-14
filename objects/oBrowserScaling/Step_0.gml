/// @description Insert description here
// You can write your code in this editor

if (browser_width != width || browser_height != height)
    {
    width = min(base_width, browser_width);
    height = min(base_height, browser_height);
   
    bw = base_width;
	bh = base_height;
	cw = width;
	ch = height;
	center = true;
	aspect = (bw / bh);

	if ((cw / aspect) > ch)
	    {
	    window_set_size((ch *aspect), ch);
	    }
	else
	    {
	    window_set_size(cw, (cw / aspect));
	    }
	if (center)
	    {
	    window_center();
	    }
    }

surface_resize(application_surface, min(window_get_width(), bw), min(window_get_height(), bh));
