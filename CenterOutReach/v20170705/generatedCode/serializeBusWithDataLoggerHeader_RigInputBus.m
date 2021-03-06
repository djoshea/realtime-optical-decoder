function [out, valid] = serializeBusWithDataLoggerHeader_RigInputBus(bus, groupType, groupName, timestamp, namePrefix)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeSerializeBusCode('RigInputBus')

    if nargin < 5, namePrefix = uint8(''); end
    namePrefixBytes = uint8(namePrefix(:))';
    valid = uint8(0);
    headerLength = uint32(BusSerialize.computeDataLoggerHeaderLength(uint8([namePrefixBytes, groupName])));
    outSize = headerLength + getSerializedBusLength_RigInputBus(bus, namePrefix);
    assert(outSize <= headerLength + 4337 + 85*numel(namePrefix));
    out = zeros(outSize, 1, 'uint8');
    offset = uint32(1);

    % Serialize data logger header
    header = BusSerialize.serializeDataLoggerHeader(groupType, uint8([namePrefixBytes, groupName]), uint32(3194666749), uint16(76), timestamp);
    out(1:headerLength) = uint8(header);
    offset = offset + headerLength;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested RigConfigBus bus field rigConfig
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % rigConfig nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('rigConfig'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_RigConfigBus(bus.rigConfig(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_RigConfigBus(bus.rigConfig(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized clock
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.clock) == 1, 'numel(bus.clock) must be 1');    % clock bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % clock signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % clock name with prefix 
    if(offset+uint32(2+5 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 5), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 5-1))) = [namePrefixBytes, uint8('clock')];
    offset = offset + uint32(numel(namePrefixBytes) + 5);

    % clock units
    if(offset+uint32(2+2 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(2), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(2-1))) = uint8('ms');
    offset = offset + uint32(2);

    % clock data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(7); % data type is uint32
    offset = offset + uint32(1);

    % clock dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.clock)), 'uint8');
    offset = offset + uint32(2*1);

    % clock data
    nBytes = uint32(4 * numel(bus.clock));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(uint32(bus.clock(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested HandBus bus field hand
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % hand nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('hand'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_HandBus(bus.hand(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_HandBus(bus.hand(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested EyeInputBus bus field eye
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % eye nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('eye'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_EyeInputBus(bus.eye(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_EyeInputBus(bus.eye(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested AnalogInputBus bus field analog
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % analog nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('analog'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_AnalogInputBus(bus.analog(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_AnalogInputBus(bus.analog(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested MicroscopeStateBus bus field scopeState
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % scopeState nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('scopeState'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_MicroscopeStateBus(bus.scopeState(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_MicroscopeStateBus(bus.scopeState(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested ScopeTimingBus bus field scopeTiming
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % scopeTiming nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('scopeTiming'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_ScopeTimingBus(bus.scopeTiming(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_ScopeTimingBus(bus.scopeTiming(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested mOEGFrameInfoBus bus field mOEGFrameInfo
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % mOEGFrameInfo nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('mOEGFrameInfo'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_mOEGFrameInfoBus(bus.mOEGFrameInfo(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_mOEGFrameInfoBus(bus.mOEGFrameInfo(1), subNamePrefix);
    offset = offset + nestedBytes; 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize nested DecoderBus bus field decoderBus
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % decoderBus nested bus element(1)
    subNamePrefix = uint8([namePrefixBytes, uint8('decoderBus'), uint8('_')]);
    nestedBytes = uint32(getSerializedBusLength_DecoderBus(bus.decoderBus(1), subNamePrefix));
    out(offset:(offset+nestedBytes-uint32(1))) = serializeBus_DecoderBus(bus.decoderBus(1), subNamePrefix);
    offset = offset + nestedBytes;  %#ok<NASGU>

    valid = uint8(1);
end