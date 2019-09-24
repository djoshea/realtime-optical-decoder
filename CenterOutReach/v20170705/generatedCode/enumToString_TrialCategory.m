function [str, valid] = enumToString_TrialCategory(enumValue)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeEnumToStringCode('TrialCategory')

    valid = uint8(1);
    coder.varsize('str', [1 10], [false true]);
    if ischar(enumValue), str = enumValue; valid = uint8(1); return; end
    switch enumValue
        case TrialCategory.Unknown
            str = uint8('Unknown');
        case TrialCategory.TargetOnly
            str = uint8('TargetOnly');
        case TrialCategory.CenterOut
            str = uint8('CenterOut');
        otherwise
            str = uint8('Unknown');
            valid = uint8(0);
    end
end