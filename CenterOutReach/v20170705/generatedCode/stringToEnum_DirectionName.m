function [enumValue, valid] = stringToEnum_DirectionName(str)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeEnumToStringCode('DirectionName')

    valid = uint8(1);
    if isequal(uint8(str(:)), uint8('None')')
        enumValue = DirectionName.None;
    elseif isequal(uint8(str(:)), uint8('Right')')
        enumValue = DirectionName.Right;
    elseif isequal(uint8(str(:)), uint8('UpRight')')
        enumValue = DirectionName.UpRight;
    elseif isequal(uint8(str(:)), uint8('Up')')
        enumValue = DirectionName.Up;
    elseif isequal(uint8(str(:)), uint8('UpLeft')')
        enumValue = DirectionName.UpLeft;
    elseif isequal(uint8(str(:)), uint8('Left')')
        enumValue = DirectionName.Left;
    elseif isequal(uint8(str(:)), uint8('DownLeft')')
        enumValue = DirectionName.DownLeft;
    elseif isequal(uint8(str(:)), uint8('Down')')
        enumValue = DirectionName.Down;
    elseif isequal(uint8(str(:)), uint8('DownRight')')
        enumValue = DirectionName.DownRight;
    elseif isequal(uint8(str(:)), uint8('Center')')
        enumValue = DirectionName.Center;
    else
        enumValue = DirectionName.None;
        valid = uint8(0);
    end
end