module GridLayout(xNum, yNum, xSpacing, ySpacing)
{
    assert($children <= xNum * yNum);
    
    for (y = [0 : 1 : yNum - 1])
    {
        for (x = [0 : 1 : xNum - 1])
        {
            idx = y * xNum + x;
            if (idx < $children)
            {
                translate([x * xSpacing, y * ySpacing, 0])
                children(idx);
            }
        }
    }
}

// Example usage
GridLayout(3, 3, 25, 25)
{
    text("A", valign = "center");
    text("B", valign = "center");
    text("C", valign = "center");

    text("1", valign = "center");
    text("2", valign = "center");
    text("3", valign = "center");

    text("X", valign = "center");
    text("Y", valign = "center");
    text("Z", valign = "center");
}
