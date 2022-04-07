
num_items = 50;

building_horizontal_width = 639;
building_horizontal_height = 239;

building_vertical_width = 239;
building_vertical_height = 639;



//Rectangle Variables

#region Building One
building_one_x = 320;
building_one_y = 240;
building_one_x2 = building_one_x + building_horizontal_width;
building_one_y2 = building_one_y + building_horizontal_height;
#endregion

#region Building Two
building_two_x = 1980;
building_two_y = 160;
building_two_x2 = building_two_x + building_vertical_width;
building_two_y2 = building_two_y + building_vertical_height;
#endregion

#region Building Three
building_three_x = 900;
building_three_y = 680;
building_three_x2 = building_three_x + building_horizontal_width;
building_three_y2 = building_three_y + building_horizontal_height;
#endregion

#region Building Two
building_two_x = 1980;
building_two_y = 160;
building_two_x2 = building_two_x + building_vertical_width;
building_two_y2 = building_two_y + building_vertical_height;
#endregion

#region Building Four
building_four_x = 240;
building_four_y = 1020;
building_four_x2 = building_four_x + building_vertical_width;
building_four_y2 = building_four_y + building_vertical_height;
#endregion

#region Building Five
building_five_x = 1240;
building_five_y = 1180;
building_five_x2 = building_five_x + building_horizontal_width;
building_five_y2 = building_five_y + building_horizontal_height;
#endregion


//This loop will run num_items times when the room is created
for (var i = 0; i < num_items; i++)
{
    var numObjectsLost = 0;
    
    //generate x cord
    var coord_x = irandom_range(16, 2383);
    
    //generate y cord
    var coord_y = irandom_range(16, 1791);
    
    //check if coords in building
    if (point_in_rectangle(coord_x, coord_y, building_one_x, building_one_y, building_one_x2, building_one_y2)) 
    {
        num_items++;
        numObjectsLost++;
        continue;    
    }
    else if (point_in_rectangle(coord_x, coord_y, building_two_x, building_two_y, building_two_x2, building_two_y2))
    {
        num_items++;
        numObjectsLost++;
        continue;
    }
    else if (point_in_rectangle(coord_x, coord_y, building_three_x, building_three_y, building_three_x2, building_three_y2))
    {
        num_items++;
        numObjectsLost++;
        continue;
    }
    else if (point_in_rectangle(coord_x, coord_y, building_four_x, building_four_y, building_four_x2, building_four_y2))
    {
        num_items++;
        numObjectsLost++;
        continue;
    }
    else if (point_in_rectangle(coord_x, coord_y, building_five_x, building_five_y, building_five_x2, building_five_y2))
    {
        num_items++;
        numObjectsLost++;
        continue;
    }
    
    //if not create object
    instance_create_layer(coord_x, coord_y, "PickupItems", obj_BasePickup);

    
}