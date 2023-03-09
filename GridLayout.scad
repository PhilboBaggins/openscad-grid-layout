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
