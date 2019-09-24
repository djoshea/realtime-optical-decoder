function [bus, valid, offset] = deserializeBus_TrialDataOutputBus(input, offset, valid, namePrefix)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeDeserializeBusCode('TrialDataOutputBus')

    in = typecast(input, 'uint8');
    if nargin < 2
         offset = uint32(1);
    end
    if nargin < 3
         valid = uint8(1);
    end
    if nargin < 4
        namePrefix = uint8('');
    end
    offset = uint32(offset);

    bus = initializeBus_TrialDataOutputBus();
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field rt
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(12 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_rt = uint8([2, 4, typecast(uint16(numel(namePrefix) + 2), 'uint8'), namePrefix, 'rt', typecast(uint16(2), 'uint8'), 'ms', 7, 1])';
    for headerOffset = 1:uint32(12+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_rt(headerOffset));
    end
    offset = offset + uint32(12 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.rt = zeros([1 1], 'uint32');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*4 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.rt = zeros([1 1], 'uint32');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.rt = zeros([1 1], 'uint32');
            if elements > uint32(0)
                bus.rt(1:elements) = typecast(in(offset:offset+uint32(elements*4 - 1))', 'uint32')';
                offset = offset + uint32(elements*4);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field delay
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(15 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_delay = uint8([2, 4, typecast(uint16(numel(namePrefix) + 5), 'uint8'), namePrefix, 'delay', typecast(uint16(2), 'uint8'), 'ms', 7, 1])';
    for headerOffset = 1:uint32(15+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_delay(headerOffset));
    end
    offset = offset + uint32(15 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.delay = zeros([1 1], 'uint32');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*4 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.delay = zeros([1 1], 'uint32');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.delay = zeros([1 1], 'uint32');
            if elements > uint32(0)
                bus.delay(1:elements) = typecast(in(offset:offset+uint32(elements*4 - 1))', 'uint32')';
                offset = offset + uint32(elements*4);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field iti
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(13 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_iti = uint8([2, 4, typecast(uint16(numel(namePrefix) + 3), 'uint8'), namePrefix, 'iti', typecast(uint16(2), 'uint8'), 'ms', 7, 1])';
    for headerOffset = 1:uint32(13+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_iti(headerOffset));
    end
    offset = offset + uint32(13 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.iti = zeros([1 1], 'uint32');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*4 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.iti = zeros([1 1], 'uint32');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.iti = zeros([1 1], 'uint32');
            if elements > uint32(0)
                bus.iti(1:elements) = typecast(in(offset:offset+uint32(elements*4 - 1))', 'uint32')';
                offset = offset + uint32(elements*4);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field success
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(15 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_success = uint8([2, 4, typecast(uint16(numel(namePrefix) + 7), 'uint8'), namePrefix, 'success', typecast(uint16(0), 'uint8'), '', 3, 1])';
    for headerOffset = 1:uint32(15+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_success(headerOffset));
    end
    offset = offset + uint32(15 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.success = zeros([1 1], 'uint8');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*1 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.success = zeros([1 1], 'uint8');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.success = zeros([1 1], 'uint8');
            if elements > uint32(0)
                bus.success(1:elements) = typecast(in(offset:offset+uint32(elements*1 - 1))', 'uint8')';
                offset = offset + uint32(elements*1);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field substantiveFailure
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(26 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_substantiveFailure = uint8([2, 4, typecast(uint16(numel(namePrefix) + 18), 'uint8'), namePrefix, 'substantiveFailure', typecast(uint16(0), 'uint8'), '', 3, 1])';
    for headerOffset = 1:uint32(26+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_substantiveFailure(headerOffset));
    end
    offset = offset + uint32(26 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.substantiveFailure = zeros([1 1], 'uint8');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*1 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.substantiveFailure = zeros([1 1], 'uint8');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.substantiveFailure = zeros([1 1], 'uint8');
            if elements > uint32(0)
                bus.substantiveFailure(1:elements) = typecast(in(offset:offset+uint32(elements*1 - 1))', 'uint8')';
                offset = offset + uint32(elements*1);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field failureCode
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(23 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_failureCode = uint8([0, 4, typecast(uint16(numel(namePrefix) + 11), 'uint8'), namePrefix, 'failureCode', typecast(uint16(4), 'uint8'), 'enum', 8, 1])';
    for headerOffset = 1:uint32(23+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_failureCode(headerOffset));
    end
    offset = offset + uint32(23 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.failureCode = repmat(TaskState.TaskPaused, [1 1]);
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if prod(sz) > uint16(22), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*1 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.failureCode = repmat(TaskState.TaskPaused, [1 1]);
        else
            % read and typecast data
            assert(elements <= uint32(22));
            bus.failureCode = repmat(TaskState.TaskPaused, [1 1]);
            if elements > uint32(0)
                coder.varsize('tempVar_failureCode', 1);
                tempVar_failureCode = repmat(TaskState.TaskPaused, [1 1]); % initialize enum to size with default
                [tempVar_failureCode, nValues, valueValid] = semicolonDelimitedStringToEnumVector_TaskState(typecast(in(offset:offset+uint32(elements*1 - 1))', 'uint8')',tempVar_failureCode);
                bus.failureCode = repmat(TaskState.TaskPaused, [1 1]);
                if nValues <= 1 && valueValid
                    bus.failureCode(uint32(1):nValues) = tempVar_failureCode(uint32(1):nValues);
                else
                    valid = uint8(0);
                end
                offset = offset + uint32(elements*1);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field consecutiveNoStarts
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(27 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_consecutiveNoStarts = uint8([2, 4, typecast(uint16(numel(namePrefix) + 19), 'uint8'), namePrefix, 'consecutiveNoStarts', typecast(uint16(0), 'uint8'), '', 5, 1])';
    for headerOffset = 1:uint32(27+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_consecutiveNoStarts(headerOffset));
    end
    offset = offset + uint32(27 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.consecutiveNoStarts = zeros([1 1], 'uint16');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*2 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.consecutiveNoStarts = zeros([1 1], 'uint16');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.consecutiveNoStarts = zeros([1 1], 'uint16');
            if elements > uint32(0)
                bus.consecutiveNoStarts(1:elements) = typecast(in(offset:offset+uint32(elements*2 - 1))', 'uint16')';
                offset = offset + uint32(elements*2);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field inPurgatory
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(19 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_inPurgatory = uint8([2, 4, typecast(uint16(numel(namePrefix) + 11), 'uint8'), namePrefix, 'inPurgatory', typecast(uint16(0), 'uint8'), '', 3, 1])';
    for headerOffset = 1:uint32(19+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_inPurgatory(headerOffset));
    end
    offset = offset + uint32(19 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.inPurgatory = zeros([1 1], 'uint8');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*1 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.inPurgatory = zeros([1 1], 'uint8');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.inPurgatory = zeros([1 1], 'uint8');
            if elements > uint32(0)
                bus.inPurgatory(1:elements) = typecast(in(offset:offset+uint32(elements*1 - 1))', 'uint8')';
                offset = offset + uint32(elements*1);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field purgatoryTimeRemaining
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(32 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_purgatoryTimeRemaining = uint8([2, 5, typecast(uint16(numel(namePrefix) + 22), 'uint8'), namePrefix, 'purgatoryTimeRemaining', typecast(uint16(2), 'uint8'), 'ms', 7, 1])';
    for headerOffset = 1:uint32(32+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_purgatoryTimeRemaining(headerOffset));
    end
    offset = offset + uint32(32 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.purgatoryTimeRemaining = zeros([1 1], 'uint32');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*4 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.purgatoryTimeRemaining = zeros([1 1], 'uint32');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.purgatoryTimeRemaining = zeros([1 1], 'uint32');
            if elements > uint32(0)
                bus.purgatoryTimeRemaining(1:elements) = typecast(in(offset:offset+uint32(elements*4 - 1))', 'uint32')';
                offset = offset + uint32(elements*4);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field holdXCenter
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(21 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_holdXCenter = uint8([2, 4, typecast(uint16(numel(namePrefix) + 11), 'uint8'), namePrefix, 'holdXCenter', typecast(uint16(2), 'uint8'), 'mm', 0, 1])';
    for headerOffset = 1:uint32(21+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_holdXCenter(headerOffset));
    end
    offset = offset + uint32(21 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.holdXCenter = zeros([1 1], 'double');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*8 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.holdXCenter = zeros([1 1], 'double');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.holdXCenter = zeros([1 1], 'double');
            if elements > uint32(0)
                bus.holdXCenter(1:elements) = typecast(in(offset:offset+uint32(elements*8 - 1))', 'double')';
                offset = offset + uint32(elements*8);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field holdYCenter
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(21 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_holdYCenter = uint8([2, 4, typecast(uint16(numel(namePrefix) + 11), 'uint8'), namePrefix, 'holdYCenter', typecast(uint16(2), 'uint8'), 'mm', 0, 1])';
    for headerOffset = 1:uint32(21+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_holdYCenter(headerOffset));
    end
    offset = offset + uint32(21 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.holdYCenter = zeros([1 1], 'double');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*8 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.holdYCenter = zeros([1 1], 'double');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.holdYCenter = zeros([1 1], 'double');
            if elements > uint32(0)
                bus.holdYCenter(1:elements) = typecast(in(offset:offset+uint32(elements*8 - 1))', 'double')';
                offset = offset + uint32(elements*8);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field holdXTarget
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(21 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_holdXTarget = uint8([2, 4, typecast(uint16(numel(namePrefix) + 11), 'uint8'), namePrefix, 'holdXTarget', typecast(uint16(2), 'uint8'), 'mm', 0, 1])';
    for headerOffset = 1:uint32(21+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_holdXTarget(headerOffset));
    end
    offset = offset + uint32(21 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.holdXTarget = zeros([1 1], 'double');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*8 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.holdXTarget = zeros([1 1], 'double');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.holdXTarget = zeros([1 1], 'double');
            if elements > uint32(0)
                bus.holdXTarget(1:elements) = typecast(in(offset:offset+uint32(elements*8 - 1))', 'double')';
                offset = offset + uint32(elements*8);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field holdYTarget
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(21 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_holdYTarget = uint8([2, 4, typecast(uint16(numel(namePrefix) + 11), 'uint8'), namePrefix, 'holdYTarget', typecast(uint16(2), 'uint8'), 'mm', 0, 1])';
    for headerOffset = 1:uint32(21+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_holdYTarget(headerOffset));
    end
    offset = offset + uint32(21 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.holdYTarget = zeros([1 1], 'double');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*8 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.holdYTarget = zeros([1 1], 'double');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.holdYTarget = zeros([1 1], 'double');
            if elements > uint32(0)
                bus.holdYTarget(1:elements) = typecast(in(offset:offset+uint32(elements*8 - 1))', 'double')';
                offset = offset + uint32(elements*8);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field decodeSuccess
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(21 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_decodeSuccess = uint8([2, 4, typecast(uint16(numel(namePrefix) + 13), 'uint8'), namePrefix, 'decodeSuccess', typecast(uint16(0), 'uint8'), '', 3, 1])';
    for headerOffset = 1:uint32(21+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_decodeSuccess(headerOffset));
    end
    offset = offset + uint32(21 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.decodeSuccess = zeros([1 1], 'uint8');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*1 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.decodeSuccess = zeros([1 1], 'uint8');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.decodeSuccess = zeros([1 1], 'uint8');
            if elements > uint32(0)
                bus.decodeSuccess(1:elements) = typecast(in(offset:offset+uint32(elements*1 - 1))', 'uint8')';
                offset = offset + uint32(elements*1);
            end
        end
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Deserializing fixed-sized field isDecodeCondition
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Checking header
    if valid == uint8(0) || offset + uint32(25 + numel(namePrefix) - 1) > numel(in)
        valid = uint8(0);
    end
    expectedHeader_isDecodeCondition = uint8([2, 4, typecast(uint16(numel(namePrefix) + 17), 'uint8'), namePrefix, 'isDecodeCondition', typecast(uint16(0), 'uint8'), '', 3, 1])';
    for headerOffset = 1:uint32(25+numel(namePrefix)-1)
        valid = uint8(valid && in(offset+headerOffset-1) == expectedHeader_isDecodeCondition(headerOffset));
    end
    offset = offset + uint32(25 + numel(namePrefix));

    % Establishing size
    if valid == uint8(0) || offset + uint32(2 - 1) > numel(in)
        % buffer not large enough for header
        valid = uint8(0);
        bus.isDecodeCondition = zeros([1 1], 'uint8');
    else
        sz = typecast(in(offset:(offset+uint32(2-1))), 'uint16')';
        offset = offset + uint32(2);
        % check size
        if sz(1) ~= uint16(1), valid = uint8(0); end
        elements = uint32(1);
        for i = 1:1
             elements = elements * uint32(sz(i));
        end
        if elements > uint32(0) && offset + uint32(elements*1 - 1) > numel(in)
            % buffer not large enough for data
            valid = uint8(0);
        end
        if valid && elements == uint32(0)
            % assigning empty value
            bus.isDecodeCondition = zeros([1 1], 'uint8');
        else
            % read and typecast data
            assert(elements <= uint32(1));
            bus.isDecodeCondition = zeros([1 1], 'uint8');
            if elements > uint32(0)
                bus.isDecodeCondition(1:elements) = typecast(in(offset:offset+uint32(elements*1 - 1))', 'uint8')';
                offset = offset + uint32(elements*1);
            end
        end
    end


end