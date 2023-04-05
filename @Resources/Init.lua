function Initialize()
    total_point_cnt = SKIN:GetVariable('TotalPointCnt')
    visible_cnt = SKIN:GetVariable('VisiblePointCnt')

    for i = 1, tonumber(total_point_cnt) do
        if i <= tonumber(visible_cnt) then
            Option = SKIN:GetVariable('Point' .. i)
            X, Y, Color, Size = Option:gmatch("(%S+)%s+(%S+)%s+(%S+)%s+(%S+)")()
            SKIN:Bang('!SetOption', 'Point' .. i, 'X', X)
            SKIN:Bang('!SetOption', 'Point' .. i, 'Y', Y)
            SKIN:Bang('!SetOption', 'Point' .. i, 'Shape', 'Ellipse 0,0,'..Size..' | StrokeWidth 0 | FillColor '..Color)
            SKIN:Bang('!SetOption', 'Point' .. i, 'Hidden', '0')
        else
            SKIN:Bang('!SetOption', 'Point' .. i, 'Hidden', '1')
        end
    end
end