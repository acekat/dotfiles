--==============================================================================
--
--  author  : Ace
--  comment : from original SLK work (v2011011601)
--
--==============================================================================

require 'cairo'

--------------------------------------------------------------------------------
--                                                                    clock DATA
-- HOURS
clock_h = {
{
    name='time',                   arg='%H',                    max_value=12,
    x=110,                         y=80,
    graph_radius=53,
    graph_thickness=3,
    graph_unit_angle=30,           graph_unit_thickness=30,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.0,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    txt_radius=34,
    txt_weight=1,                  txt_size=10.0,
    txt_fg_colour=0xFFFFFF,        txt_fg_alpha=0.6,
    graduation_radius=53,
    graduation_thickness=6,        graduation_mark_thickness=2,
    graduation_unit_angle=30,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    },
}
-- MINUTES
clock_m = {
    {
    name='time',                   arg='%M',                    max_value=60,
    x=110,                         y=80,
    graph_radius=57,
    graph_thickness=2,
    graph_unit_angle=6,            graph_unit_thickness=6,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.3,
    txt_radius=70,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xFFFFFF,        txt_fg_alpha=0.6,
    graduation_radius=57,
    graduation_thickness=0,        graduation_mark_thickness=2,
    graduation_unit_angle=30,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    },
}
-- SECONDS
clock_s = {
    {
    name='time',                   arg='%S',                    max_value=60,
    x=110,                         y=80,
    graph_radius=50,
    graph_thickness=2,
    graph_unit_angle=6,            graph_unit_thickness=2,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.0,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    txt_radius=40,
    txt_weight=0,                  txt_size=12.0,
    txt_fg_colour=0xFFFFFF,        txt_fg_alpha=0.3,
    graduation_radius=0,
    graduation_thickness=0,        graduation_mark_thickness=0,
    graduation_unit_angle=0,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.0,
    },
}

--------------------------------------------------------------------------------
--                                                                    gauge DATA
gauge = {
{
    name='hwmon',                  arg='1 temp 2',                  max_value=100,
    x=140,                          y=133,
    graph_radius=13,
    graph_thickness=5,
    graph_start_angle=165,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=40,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=40,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='hwmon',                  arg='1 temp 3',                  max_value=100,
    x=170,                          y=133,
    graph_radius=13,
    graph_thickness=5,
    graph_start_angle=285,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=40,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=40,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='exec',                   arg='hddtemp -n /dev/sda',                  max_value=100,
    x=155,                         y=160,
    graph_radius=13,
    graph_thickness=5,
    graph_start_angle=45,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=0,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=40,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=40,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu0',                  max_value=100,
    x=75,                          y=200,
    graph_radius=40,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=55,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=40,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='cpu',                    arg='cpu1',                  max_value=100,
    x=75,                          y=200,
    graph_radius=27,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=13,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=27,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='memperc',                arg='',                      max_value=100,
    x=75,                          y=320,
    graph_radius=40,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=24,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=40,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.5,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='fs_used_perc',           arg='/home/',                     max_value=100,
    x=75,                          y=440,
    graph_radius=40,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=55,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=40,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
{
    name='fs_used_perc',           arg='/',                max_value=100,
    x=75,                          y=440,
    graph_radius=27,
    graph_thickness=10,
    graph_start_angle=180,
    graph_unit_angle=2.7,          graph_unit_thickness=2.7,
    graph_bg_colour=0xffffff,      graph_bg_alpha=0.1,
    graph_fg_colour=0xFFFFFF,      graph_fg_alpha=0.2,
    hand_fg_colour=0xD75F00,       hand_fg_alpha=1.0,
    txt_radius=13,
    txt_weight=0,                  txt_size=9.0,
    txt_fg_colour=0xD75F00,        txt_fg_alpha=1.0,
    graduation_radius=27,
    graduation_thickness=0,        graduation_mark_thickness=0.5,
    graduation_unit_angle=27,
    graduation_fg_colour=0xFFFFFF, graduation_fg_alpha=0.3,
    caption='',
    caption_weight=1,              caption_size=8.0,
    caption_fg_colour=0xFFFFFF,    caption_fg_alpha=0.3,
},
}

--------------------------------------------------------------------------------
--                                                                    arrow DATA
-- orientation: up, right, down, left
-- txt_pos: center, top, right, bottom, left
arrow = {
{
    name='upspeed',                arg='',
    x=75,                          y=550,
    height=10,                     width=10,
    orientation='up',
    graph_thickness=0,             graph_fill=true,
    graph_colour=0xD75F00,         graph_alpha=1.0,
    txt_weight=0,                  txt_size=10.0,
    txt_colour=0xFFFFFF,           txt_alpha=1.0,
    txt_pos='right',               txt_dist_from_arrow=2,
},
{
    name='downspeed',              arg='',
    x=135,                         y=550,
    height=10,                     width=10,
    orientation='down',
    graph_thickness=0,             graph_fill=true,
    graph_colour=0xD75F00,         graph_alpha=1.0,
    txt_weight=0,                  txt_size=10.0,
    txt_colour=0xFFFFFF,           txt_alpha=1.0,
    txt_pos='right',               txt_dist_from_arrow=2,
},
}

-------------------------------------------------------------------------------
--                                                                 rgb_to_r_g_b
-- converts color in hexa to decimal
--
function rgb_to_r_g_b(colour, alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

-------------------------------------------------------------------------------
--                                                            angle_to_position
-- convert degree to rad and rotate (0 degree is top/north)
--
function angle_to_position(start_angle, current_angle)
    local pos = current_angle + start_angle
    return ( ( pos * (2 * math.pi / 360) ) - (math.pi / 2) )
end

-------------------------------------------------------------------------------
--                                                              draw_clock_ring
-- displays clock
--
function draw_clock_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']

    -- background ring
    cairo_arc(display, x, y, graph_radius, 0, 2 * math.pi)
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = (value % max_value)
    local i = 1
    while i <= val do
        cairo_arc(display, x, y, graph_radius,(  ((graph_unit_angle * i) - graph_unit_thickness)*(2*math.pi/360)  )-(math.pi/2),((graph_unit_angle * i) * (2*math.pi/360))-(math.pi/2))
        cairo_set_source_rgba(display,rgb_to_r_g_b(graph_fg_colour,graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = (graph_unit_angle * i) - graph_unit_thickness

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = 360 / graduation_unit_angle
        local i = 1
        while i <= nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            cairo_arc(display, x, y, graduation_radius, (((graduation_unit_angle * i)-(graduation_mark_thickness/2))*(2*math.pi/360))-(math.pi/2),(((graduation_unit_angle * i)+(graduation_mark_thickness/2))*(2*math.pi/360))-(math.pi/2))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * (math.cos((angle * 2 * math.pi / 360)-(math.pi/2)))
    local movey = txt_radius * (math.sin((angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight);
    cairo_set_font_size (display, txt_size);
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha));
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3);
    cairo_show_text (display, value);
    cairo_stroke (display);
end

-------------------------------------------------------------------------------
--                                                              draw_gauge_ring
-- displays gauges
--
function draw_gauge_ring(display, data, value)
    local max_value = data['max_value']
    local x, y = data['x'], data['y']
    local graph_radius = data['graph_radius']
    local graph_thickness, graph_unit_thickness = data['graph_thickness'], data['graph_unit_thickness']
    local graph_start_angle = data['graph_start_angle']
    local graph_unit_angle = data['graph_unit_angle']
    local graph_bg_colour, graph_bg_alpha = data['graph_bg_colour'], data['graph_bg_alpha']
    local graph_fg_colour, graph_fg_alpha = data['graph_fg_colour'], data['graph_fg_alpha']
    local hand_fg_colour, hand_fg_alpha = data['hand_fg_colour'], data['hand_fg_alpha']
    local graph_end_angle = (max_value * graph_unit_angle) % 360

    -- background ring
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, 0), angle_to_position(graph_start_angle, graph_end_angle))
    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_bg_colour, graph_bg_alpha))
    cairo_set_line_width(display, graph_thickness)
    cairo_stroke(display)

    -- arc of value
    local val = value % (max_value + 1)
    local start_arc = 0
    local stop_arc = 0
    local i = 1
    while i <= val do
        start_arc = (graph_unit_angle * i) - graph_unit_thickness
        stop_arc = (graph_unit_angle * i)
        cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
        cairo_set_source_rgba(display, rgb_to_r_g_b(graph_fg_colour, graph_fg_alpha))
        cairo_stroke(display)
        i = i + 1
    end
    local angle = start_arc

    -- hand
    start_arc = (graph_unit_angle * val) - (graph_unit_thickness * 2)
    stop_arc = (graph_unit_angle * val)
    cairo_arc(display, x, y, graph_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
    cairo_set_source_rgba(display, rgb_to_r_g_b(hand_fg_colour, hand_fg_alpha))
    cairo_stroke(display)

    -- graduations marks
    local graduation_radius = data['graduation_radius']
    local graduation_thickness, graduation_mark_thickness = data['graduation_thickness'], data['graduation_mark_thickness']
    local graduation_unit_angle = data['graduation_unit_angle']
    local graduation_fg_colour, graduation_fg_alpha = data['graduation_fg_colour'], data['graduation_fg_alpha']
    if graduation_radius > 0 and graduation_thickness > 0 and graduation_unit_angle > 0 then
        local nb_graduation = graph_end_angle / graduation_unit_angle
        local i = 0
        while i < nb_graduation do
            cairo_set_line_width(display, graduation_thickness)
            start_arc = (graduation_unit_angle * i) - (graduation_mark_thickness / 2)
            stop_arc = (graduation_unit_angle * i) + (graduation_mark_thickness / 2)
            cairo_arc(display, x, y, graduation_radius, angle_to_position(graph_start_angle, start_arc), angle_to_position(graph_start_angle, stop_arc))
            cairo_set_source_rgba(display,rgb_to_r_g_b(graduation_fg_colour,graduation_fg_alpha))
            cairo_stroke(display)
            cairo_set_line_width(display, graph_thickness)
            i = i + 1
        end
    end

    -- text
    local txt_radius = data['txt_radius']
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_fg_colour, txt_fg_alpha = data['txt_fg_colour'], data['txt_fg_alpha']
    local movex = txt_radius * math.cos(angle_to_position(graph_start_angle, angle))
    local movey = txt_radius * math.sin(angle_to_position(graph_start_angle, angle))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size (display, txt_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(txt_fg_colour, txt_fg_alpha))
    cairo_move_to (display, x + movex - (txt_size / 2), y + movey + 3)
    cairo_show_text (display, value)
    cairo_stroke (display)

    -- caption
    local caption = data['caption']
    local caption_weight, caption_size = data['caption_weight'], data['caption_size']
    local caption_fg_colour, caption_fg_alpha = data['caption_fg_colour'], data['caption_fg_alpha']
    local tox = graph_radius * (math.cos((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    local toy = graph_radius * (math.sin((graph_start_angle * 2 * math.pi / 360)-(math.pi/2)))
    cairo_select_font_face (display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, caption_weight);
    cairo_set_font_size (display, caption_size)
    cairo_set_source_rgba (display, rgb_to_r_g_b(caption_fg_colour, caption_fg_alpha))
    cairo_move_to (display, x + tox + 5, y + toy + 1)
    -- bad hack but not enough time !
    if graph_start_angle < 105 then
        cairo_move_to (display, x + tox - 30, y + toy + 1)
    end
    cairo_show_text (display, caption)
    cairo_stroke (display)
end

-------------------------------------------------------------------------------
--                                                              draw_arrows
-- displays arrows
--
function draw_arrows(display, data, value)
    local x, y = data['x'], data['y']
    local height, width = data['height'], data['width']
    local orientation = data['orientation']
    local graph_thickness, graph_fill = data['graph_thickness'], data['graph_fill']
    local graph_colour, graph_alpha = data['graph_colour'], data['graph_alpha']
    
    -- arrow dimension
    local rec_height = height / 2
    local rec_width = width / 2
    local tri_height = height - rec_height
    local tri_width = width
    
    -- create path
    if orientation == 'up' then
        cairo_move_to(display, x, y + tri_height)
        cairo_rel_line_to(display, (tri_width - rec_width) / 2, 0)
        cairo_rel_line_to(display, 0, rec_height)
        cairo_rel_line_to(display, rec_width, 0)
        cairo_rel_line_to(display, 0, -rec_height)
        cairo_rel_line_to(display, (tri_width - rec_width) / 2, 0)
        cairo_rel_line_to(display, -(tri_width / 2), -tri_height)
        cairo_close_path(display)
    elseif orientation == 'down' then
        cairo_move_to(display, x, y + rec_height)
        cairo_rel_line_to(display, (tri_width - rec_width) / 2, 0)
        cairo_rel_line_to(display, 0, -rec_height)
        cairo_rel_line_to(display, rec_width, 0)
        cairo_rel_line_to(display, 0, rec_height)
        cairo_rel_line_to(display, (tri_width - rec_width) / 2, 0)
        cairo_rel_line_to(display, -(tri_width / 2), tri_height)
        cairo_close_path(display)
    elseif orientation == 'right' then
        tri_height = height
        tri_width = width - rec_width
        cairo_move_to(display, x + rec_width, y)
        cairo_rel_line_to(display, 0, (tri_height - rec_height) / 2)
        cairo_rel_line_to(display, -rec_width, 0)
        cairo_rel_line_to(display, 0, rec_height)
        cairo_rel_line_to(display, rec_width, 0)
        cairo_rel_line_to(display, 0, (tri_height - rec_height) / 2)
        cairo_rel_line_to(display, tri_width, -(tri_height / 2))
        cairo_close_path(display)
    elseif orientation == 'left' then
        tri_height = height
        tri_width = width - rec_width
        cairo_move_to(display, x + rec_width, y)
        cairo_rel_line_to(display, 0, (tri_height - rec_height) / 2)
        cairo_rel_line_to(display, rec_width, 0)
        cairo_rel_line_to(display, 0, rec_height)
        cairo_rel_line_to(display, -rec_width, 0)
        cairo_rel_line_to(display, 0, (tri_height - rec_height) / 2)
        cairo_rel_line_to(display, -tri_width, -(tri_height / 2))
        cairo_close_path(display)
    end

    cairo_set_source_rgba(display, rgb_to_r_g_b(graph_colour, graph_alpha))

    -- fill
    if graph_fill then
        cairo_fill(display)
    else
        cairo_set_line_width(display, graph_thickness)
        cairo_stroke(display)
    end

    -- text
    local txt_weight, txt_size = data['txt_weight'], data['txt_size']
    local txt_colour, txt_alpha = data['txt_colour'], data['txt_alpha']
    local txt_pos , txt_dist_from_arrow = data['txt_pos'], data['txt_dist_from_arrow']
    local value_height, value_width = 0, 0
    local te = cairo_text_extents_t:create()
    cairo_select_font_face(display, "ubuntu", CAIRO_FONT_SLANT_NORMAL, txt_weight)
    cairo_set_font_size(display, txt_size)
    cairo_set_source_rgba(display, rgb_to_r_g_b(txt_colour, txt_alpha))
    cairo_text_extents(display, value, te);
    value_height = te.height
    value_width = te.width
    if txt_pos == 'center' then
        cairo_move_to(display, x + (width / 2) - (value_width / 2), y + (height / 2) + (value_height / 2))
    elseif txt_pos == 'top' then
        cairo_move_to(display, x + (width / 2) - (value_width / 2), y - txt_dist_from_arrow)
    elseif txt_pos == 'bottom' then
        cairo_move_to(display, x + (width / 2) - (value_width / 2), y + height + value_height + txt_dist_from_arrow)
    elseif txt_pos == 'right' then
        cairo_move_to(display, x + width + txt_dist_from_arrow, y + (height / 2) + (value_height / 2))
    elseif txt_pos == 'left' then
        cairo_move_to(display, x - value_width - txt_dist_from_arrow, y + (height / 2) + (value_height / 2))
    end
    cairo_show_text(display, value)
end

-------------------------------------------------------------------------------
--                                                               go_clock_rings
-- loads data and displays clock
--
function go_clock_rings(display)
    local function load_clock_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_clock_ring(display, data, value)
    end
    
    for i in pairs(clock_h) do
        load_clock_rings(display, clock_h[i])
    end
    for i in pairs(clock_m) do
        load_clock_rings(display, clock_m[i])
    end
    for i in pairs(clock_s) do
        load_clock_rings(display, clock_s[i])
    end
end

-------------------------------------------------------------------------------
--                                                               go_gauge_rings
-- loads data and displays gauges
--
function go_gauge_rings(display)
    local function load_gauge_rings(display, data)
        local str, value = '', 0
        str = string.format('${%s %s}',data['name'], data['arg'])
        str = conky_parse(str)
        value = tonumber(str)
        draw_gauge_ring(display, data, value)
    end
    
    for i in pairs(gauge) do
        load_gauge_rings(display, gauge[i])
    end
end

-------------------------------------------------------------------------------
--                                                               go_arrows
-- loads data and displays arrows
--
function go_arrows(display)
    local function load_arrows(display, data)
        local str, value = '', ''
        str = string.format('${%s %s}',data['name'], data['arg'])
        value = conky_parse(str)
        draw_arrows(display, data, value)
    end
    
    for i in pairs(arrow) do
        load_arrows(display, arrow[i])
    end
end

-------------------------------------------------------------------------------
--                                                                         MAIN
function conky_main()
    if conky_window == nil then 
        return
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local display = cairo_create(cs)
    
    local updates = conky_parse('${updates}')
    update_num = tonumber(updates)
    
    if update_num > 5 then
        -- go_clock_rings(display)
        go_gauge_rings(display)
        go_arrows(display)
    end
    
    cairo_surface_destroy(cs)
    cairo_destroy(display)
end

