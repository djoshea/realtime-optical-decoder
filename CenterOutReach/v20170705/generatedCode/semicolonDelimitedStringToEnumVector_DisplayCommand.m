function [enumVector, nValues, valid] = semicolonDelimitedStringToEnumVector_DisplayCommand(str, enumVector)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeSemicolonDelimitedStringToEnumVectorCode('DisplayCommand')

    valid = uint8(1);
    nValues = uint32(0);
    coder.varsize('token', 25);
    if nargin < 2
        maxValues = Inf; % for matlab use only
        enumVector = DisplayCommand.empty(0, 1);
    else
        maxValues = numel(enumVector); % for simulink codegen use, required to avoid undetermined max size issue
    end

    counter = 1;
    idx1 = 1;
    while(idx1 <= numel(str))
        idx2 = idx1+1;
        while(idx2 <= numel(str))
            if str(idx2) == ';'
                break;
            end
            idx2 = idx2 + 1;
        end

    if idx2-idx1 > 25
        valid = uint8(0);
        return;
    end
    token = str(idx1:idx2-1);
        if isequal(uint8(token(:)), uint8('TaskPaused')')
            enumVector(counter) = DisplayCommand.TaskPaused;
        elseif isequal(uint8(token(:)), uint8('StartTask')')
            enumVector(counter) = DisplayCommand.StartTask;
        elseif isequal(uint8(token(:)), uint8('InitTrial')')
            enumVector(counter) = DisplayCommand.InitTrial;
        elseif isequal(uint8(token(:)), uint8('CenterOnset')')
            enumVector(counter) = DisplayCommand.CenterOnset;
        elseif isequal(uint8(token(:)), uint8('CenterAcquired')')
            enumVector(counter) = DisplayCommand.CenterAcquired;
        elseif isequal(uint8(token(:)), uint8('CenterSettled')')
            enumVector(counter) = DisplayCommand.CenterSettled;
        elseif isequal(uint8(token(:)), uint8('CenterHeld')')
            enumVector(counter) = DisplayCommand.CenterHeld;
        elseif isequal(uint8(token(:)), uint8('DelayPeriodStart')')
            enumVector(counter) = DisplayCommand.DelayPeriodStart;
        elseif isequal(uint8(token(:)), uint8('GoCueZeroDelay')')
            enumVector(counter) = DisplayCommand.GoCueZeroDelay;
        elseif isequal(uint8(token(:)), uint8('GoCueNonZeroDelay')')
            enumVector(counter) = DisplayCommand.GoCueNonZeroDelay;
        elseif isequal(uint8(token(:)), uint8('MoveOnset')')
            enumVector(counter) = DisplayCommand.MoveOnset;
        elseif isequal(uint8(token(:)), uint8('ImageDecodeTestObject')')
            enumVector(counter) = DisplayCommand.ImageDecodeTestObject;
        elseif isequal(uint8(token(:)), uint8('ImageDecodeTestObjectHide')')
            enumVector(counter) = DisplayCommand.ImageDecodeTestObjectHide;
        elseif isequal(uint8(token(:)), uint8('DecodeSuccess')')
            enumVector(counter) = DisplayCommand.DecodeSuccess;
        elseif isequal(uint8(token(:)), uint8('DecodeFail')')
            enumVector(counter) = DisplayCommand.DecodeFail;
        elseif isequal(uint8(token(:)), uint8('TargetAcquired')')
            enumVector(counter) = DisplayCommand.TargetAcquired;
        elseif isequal(uint8(token(:)), uint8('TargetSettled')')
            enumVector(counter) = DisplayCommand.TargetSettled;
        elseif isequal(uint8(token(:)), uint8('TargetHeld')')
            enumVector(counter) = DisplayCommand.TargetHeld;
        elseif isequal(uint8(token(:)), uint8('Success')')
            enumVector(counter) = DisplayCommand.Success;
        elseif isequal(uint8(token(:)), uint8('FailureCenterFlyAway')')
            enumVector(counter) = DisplayCommand.FailureCenterFlyAway;
        elseif isequal(uint8(token(:)), uint8('FailureTargetFlyAway')')
            enumVector(counter) = DisplayCommand.FailureTargetFlyAway;
        elseif isequal(uint8(token(:)), uint8('ITI')')
            enumVector(counter) = DisplayCommand.ITI;
        elseif isequal(uint8(token(:)), uint8('CenterUnacquired')')
            enumVector(counter) = DisplayCommand.CenterUnacquired;
        elseif isequal(uint8(token(:)), uint8('TargetUnacquired')')
            enumVector(counter) = DisplayCommand.TargetUnacquired;
        elseif isequal(uint8(token(:)), uint8('FailureHitObstacle')')
            enumVector(counter) = DisplayCommand.FailureHitObstacle;
        elseif isequal(uint8(token(:)), uint8('HitObstacle')')
            enumVector(counter) = DisplayCommand.HitObstacle;
        elseif isequal(uint8(token(:)), uint8('ReleasedObstacle')')
            enumVector(counter) = DisplayCommand.ReleasedObstacle;
        elseif isequal(uint8(token(:)), uint8('ObstacleOnset')')
            enumVector(counter) = DisplayCommand.ObstacleOnset;
        elseif isequal(uint8(token(:)), uint8('TargetShift')')
            enumVector(counter) = DisplayCommand.TargetShift;
        elseif isequal(uint8(token(:)), uint8('TaskTimeout')')
            enumVector(counter) = DisplayCommand.TaskTimeout;
        else
            valid = uint8(0);
            return;
        end
        counter = counter + 1;
        if counter > maxValues
            nValues = uint32(counter - 1);
            return;
        end
        idx1 = idx2 + 1;
    end
    nValues = uint32(counter - 1);

end