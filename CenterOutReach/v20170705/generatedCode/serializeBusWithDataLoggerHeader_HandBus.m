function [out, valid] = serializeBusWithDataLoggerHeader_HandBus(bus, groupType, groupName, timestamp, namePrefix)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeSerializeBusCode('HandBus')

    if nargin < 5, namePrefix = uint8(''); end
    namePrefixBytes = uint8(namePrefix(:))';
    valid = uint8(0);
    headerLength = uint32(BusSerialize.computeDataLoggerHeaderLength(uint8([namePrefixBytes, groupName])));
    coder.varsize('out', 486 + 16*numel(namePrefix) + headerLength);
    outSize = headerLength + getSerializedBusLength_HandBus(bus, namePrefix);
    assert(outSize <= headerLength + 486 + 16*numel(namePrefix));
    out = zeros(outSize, 1, 'uint8');
    offset = uint32(1);

    % Serialize data logger header
    header = BusSerialize.serializeDataLoggerHeader(groupType, uint8([namePrefixBytes, groupName]), uint32(1592073287), uint16(16), timestamp);
    out(1:headerLength) = uint8(header);
    offset = offset + headerLength;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handSource
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handSource) == 1, 'numel(bus.handSource) must be 1');    % handSource bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(0);
    offset = offset + uint32(1);

    % handSource signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(4);
    offset = offset + uint32(1);

    % handSource name with prefix 
    if(offset+uint32(2+10 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 10), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 10-1))) = [namePrefixBytes, uint8('handSource')];
    offset = offset + uint32(numel(namePrefixBytes) + 10);

    % handSource units
    if(offset+uint32(2+4 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(4), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(4-1))) = uint8('enum');
    offset = offset + uint32(4);

    % handSource data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(8); % data type is HandSource
    offset = offset + uint32(1);

    % handSource dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    % converting enum type HandSource to string
    coder.varsize('enumAsStr_handSource', 7);
    enumAsStr_handSource = zeros(0, 1, 'uint8');
    for iEnum = 1:numel(bus.handSource)
        enumAsStr_handSource = [enumAsStr_handSource; uint8(enumToString_HandSource(bus.handSource(iEnum)))']; %#ok<AGROW>
        if iEnum < numel(bus.handSource)
            enumAsStr_handSource = [enumAsStr_handSource; uint8(';')]; %#ok<AGROW>
        end
    end
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(enumAsStr_handSource)), 'uint8');
    offset = offset + uint32(2*1);

    % handSource data
    nBytes = uint32(numel(enumAsStr_handSource));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = uint8(enumAsStr_handSource(:));
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handUpdate
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handUpdate) == 1, 'numel(bus.handUpdate) must be 1');    % handUpdate bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handUpdate signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handUpdate name with prefix 
    if(offset+uint32(2+10 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 10), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 10-1))) = [namePrefixBytes, uint8('handUpdate')];
    offset = offset + uint32(numel(namePrefixBytes) + 10);

    % handUpdate units
    if(offset+uint32(2+0 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(0), 'uint8');
    offset = offset + uint32(2);

    % handUpdate data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(3); % data type is uint8
    offset = offset + uint32(1);

    % handUpdate dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handUpdate)), 'uint8');
    offset = offset + uint32(2*1);

    % handUpdate data
    nBytes = uint32(1 * numel(bus.handUpdate));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = uint8(bus.handUpdate(:));
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handSeen
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handSeen) == 1, 'numel(bus.handSeen) must be 1');    % handSeen bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handSeen signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handSeen name with prefix 
    if(offset+uint32(2+8 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 8), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 8-1))) = [namePrefixBytes, uint8('handSeen')];
    offset = offset + uint32(numel(namePrefixBytes) + 8);

    % handSeen units
    if(offset+uint32(2+0 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(0), 'uint8');
    offset = offset + uint32(2);

    % handSeen data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(3); % data type is uint8
    offset = offset + uint32(1);

    % handSeen dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handSeen)), 'uint8');
    offset = offset + uint32(2*1);

    % handSeen data
    nBytes = uint32(1 * numel(bus.handSeen));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = uint8(bus.handSeen(:));
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handOnDevice
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handOnDevice) == 1, 'numel(bus.handOnDevice) must be 1');    % handOnDevice bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handOnDevice signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handOnDevice name with prefix 
    if(offset+uint32(2+12 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 12), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 12-1))) = [namePrefixBytes, uint8('handOnDevice')];
    offset = offset + uint32(numel(namePrefixBytes) + 12);

    % handOnDevice units
    if(offset+uint32(2+0 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(0), 'uint8');
    offset = offset + uint32(2);

    % handOnDevice data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(3); % data type is uint8
    offset = offset + uint32(1);

    % handOnDevice dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handOnDevice)), 'uint8');
    offset = offset + uint32(2*1);

    % handOnDevice data
    nBytes = uint32(1 * numel(bus.handOnDevice));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = uint8(bus.handOnDevice(:));
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handX
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handX) == 1, 'numel(bus.handX) must be 1');    % handX bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handX signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handX name with prefix 
    if(offset+uint32(2+5 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 5), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 5-1))) = [namePrefixBytes, uint8('handX')];
    offset = offset + uint32(numel(namePrefixBytes) + 5);

    % handX units
    if(offset+uint32(2+2 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(2), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(2-1))) = uint8('mm');
    offset = offset + uint32(2);

    % handX data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handX dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handX)), 'uint8');
    offset = offset + uint32(2*1);

    % handX data
    nBytes = uint32(8 * numel(bus.handX));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handX(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handY
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handY) == 1, 'numel(bus.handY) must be 1');    % handY bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handY signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handY name with prefix 
    if(offset+uint32(2+5 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 5), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 5-1))) = [namePrefixBytes, uint8('handY')];
    offset = offset + uint32(numel(namePrefixBytes) + 5);

    % handY units
    if(offset+uint32(2+2 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(2), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(2-1))) = uint8('mm');
    offset = offset + uint32(2);

    % handY data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handY dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handY)), 'uint8');
    offset = offset + uint32(2*1);

    % handY data
    nBytes = uint32(8 * numel(bus.handY));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handY(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handZ
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handZ) == 1, 'numel(bus.handZ) must be 1');    % handZ bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handZ signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handZ name with prefix 
    if(offset+uint32(2+5 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 5), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 5-1))) = [namePrefixBytes, uint8('handZ')];
    offset = offset + uint32(numel(namePrefixBytes) + 5);

    % handZ units
    if(offset+uint32(2+2 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(2), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(2-1))) = uint8('mm');
    offset = offset + uint32(2);

    % handZ data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handZ dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handZ)), 'uint8');
    offset = offset + uint32(2*1);

    % handZ data
    nBytes = uint32(8 * numel(bus.handZ));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handZ(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handTouching
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handTouching) == 1, 'numel(bus.handTouching) must be 1');    % handTouching bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handTouching signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handTouching name with prefix 
    if(offset+uint32(2+12 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 12), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 12-1))) = [namePrefixBytes, uint8('handTouching')];
    offset = offset + uint32(numel(namePrefixBytes) + 12);

    % handTouching units
    if(offset+uint32(2+0 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(0), 'uint8');
    offset = offset + uint32(2);

    % handTouching data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(3); % data type is uint8
    offset = offset + uint32(1);

    % handTouching dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handTouching)), 'uint8');
    offset = offset + uint32(2*1);

    % handTouching data
    nBytes = uint32(1 * numel(bus.handTouching));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = uint8(bus.handTouching(:));
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handVelocityX
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handVelocityX) == 1, 'numel(bus.handVelocityX) must be 1');    % handVelocityX bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handVelocityX signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handVelocityX name with prefix 
    if(offset+uint32(2+13 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 13), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 13-1))) = [namePrefixBytes, uint8('handVelocityX')];
    offset = offset + uint32(numel(namePrefixBytes) + 13);

    % handVelocityX units
    if(offset+uint32(2+6 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(6), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(6-1))) = uint8('mm/sec');
    offset = offset + uint32(6);

    % handVelocityX data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handVelocityX dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handVelocityX)), 'uint8');
    offset = offset + uint32(2*1);

    % handVelocityX data
    nBytes = uint32(8 * numel(bus.handVelocityX));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handVelocityX(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handVelocityY
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handVelocityY) == 1, 'numel(bus.handVelocityY) must be 1');    % handVelocityY bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handVelocityY signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handVelocityY name with prefix 
    if(offset+uint32(2+13 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 13), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 13-1))) = [namePrefixBytes, uint8('handVelocityY')];
    offset = offset + uint32(numel(namePrefixBytes) + 13);

    % handVelocityY units
    if(offset+uint32(2+6 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(6), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(6-1))) = uint8('mm/sec');
    offset = offset + uint32(6);

    % handVelocityY data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handVelocityY dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handVelocityY)), 'uint8');
    offset = offset + uint32(2*1);

    % handVelocityY data
    nBytes = uint32(8 * numel(bus.handVelocityY));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handVelocityY(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handVelocityZ
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handVelocityZ) == 1, 'numel(bus.handVelocityZ) must be 1');    % handVelocityZ bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handVelocityZ signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handVelocityZ name with prefix 
    if(offset+uint32(2+13 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 13), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 13-1))) = [namePrefixBytes, uint8('handVelocityZ')];
    offset = offset + uint32(numel(namePrefixBytes) + 13);

    % handVelocityZ units
    if(offset+uint32(2+6 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(6), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(6-1))) = uint8('mm/sec');
    offset = offset + uint32(6);

    % handVelocityZ data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handVelocityZ dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handVelocityZ)), 'uint8');
    offset = offset + uint32(2*1);

    % handVelocityZ data
    nBytes = uint32(8 * numel(bus.handVelocityZ));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handVelocityZ(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handAccelerationX
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handAccelerationX) == 1, 'numel(bus.handAccelerationX) must be 1');    % handAccelerationX bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handAccelerationX signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handAccelerationX name with prefix 
    if(offset+uint32(2+17 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 17), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 17-1))) = [namePrefixBytes, uint8('handAccelerationX')];
    offset = offset + uint32(numel(namePrefixBytes) + 17);

    % handAccelerationX units
    if(offset+uint32(2+8 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(8), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(8-1))) = uint8('mm/sec^2');
    offset = offset + uint32(8);

    % handAccelerationX data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handAccelerationX dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handAccelerationX)), 'uint8');
    offset = offset + uint32(2*1);

    % handAccelerationX data
    nBytes = uint32(8 * numel(bus.handAccelerationX));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handAccelerationX(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handAccelerationY
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handAccelerationY) == 1, 'numel(bus.handAccelerationY) must be 1');    % handAccelerationY bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handAccelerationY signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handAccelerationY name with prefix 
    if(offset+uint32(2+17 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 17), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 17-1))) = [namePrefixBytes, uint8('handAccelerationY')];
    offset = offset + uint32(numel(namePrefixBytes) + 17);

    % handAccelerationY units
    if(offset+uint32(2+8 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(8), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(8-1))) = uint8('mm/sec^2');
    offset = offset + uint32(8);

    % handAccelerationY data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handAccelerationY dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handAccelerationY)), 'uint8');
    offset = offset + uint32(2*1);

    % handAccelerationY data
    nBytes = uint32(8 * numel(bus.handAccelerationY));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handAccelerationY(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handAccelerationZ
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handAccelerationZ) == 1, 'numel(bus.handAccelerationZ) must be 1');    % handAccelerationZ bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handAccelerationZ signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handAccelerationZ name with prefix 
    if(offset+uint32(2+17 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 17), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 17-1))) = [namePrefixBytes, uint8('handAccelerationZ')];
    offset = offset + uint32(numel(namePrefixBytes) + 17);

    % handAccelerationZ units
    if(offset+uint32(2+8 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(8), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(8-1))) = uint8('mm/sec^2');
    offset = offset + uint32(8);

    % handAccelerationZ data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handAccelerationZ dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handAccelerationZ)), 'uint8');
    offset = offset + uint32(2*1);

    % handAccelerationZ data
    nBytes = uint32(8 * numel(bus.handAccelerationZ));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handAccelerationZ(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handSpeed
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handSpeed) == 1, 'numel(bus.handSpeed) must be 1');    % handSpeed bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handSpeed signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handSpeed name with prefix 
    if(offset+uint32(2+9 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 9), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 9-1))) = [namePrefixBytes, uint8('handSpeed')];
    offset = offset + uint32(numel(namePrefixBytes) + 9);

    % handSpeed units
    if(offset+uint32(2+6 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(6), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(6-1))) = uint8('mm/sec');
    offset = offset + uint32(6);

    % handSpeed data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(0); % data type is double
    offset = offset + uint32(1);

    % handSpeed dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handSpeed)), 'uint8');
    offset = offset + uint32(2*1);

    % handSpeed data
    nBytes = uint32(8 * numel(bus.handSpeed));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = typecast(double(bus.handSpeed(:))', 'uint8')';
    end
    offset = offset + nBytes;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Serialize fixed-sized handMoving
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Check input size is valid
    assert(numel(bus.handMoving) == 1, 'numel(bus.handMoving) must be 1');    % handMoving bitFlags
    if(offset > numel(out)), return, end
    out(offset) = uint8(2);
    offset = offset + uint32(1);

    % handMoving signal type
    if(offset > numel(out)), return, end
    out(offset) = uint8(5);
    offset = offset + uint32(1);

    % handMoving name with prefix 
    if(offset+uint32(2+10 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(numel(namePrefixBytes) + 10), 'uint8');
    offset = offset + uint32(2);
    out(offset:(offset+uint32(numel(namePrefixBytes) + 10-1))) = [namePrefixBytes, uint8('handMoving')];
    offset = offset + uint32(numel(namePrefixBytes) + 10);

    % handMoving units
    if(offset+uint32(2+0 -1) > numel(out)), return, end
    out(offset:(offset+uint32(1))) = typecast(uint16(0), 'uint8');
    offset = offset + uint32(2);

    % handMoving data type id
    if(offset > numel(out)), return, end
    out(offset) = uint8(3); % data type is uint8
    offset = offset + uint32(1);

    % handMoving dimensions
    if(offset > numel(out)), return, end
    if(offset+uint32(1+2*1-1) > numel(out)), return, end
    out(offset) = uint8(1);
    offset = offset + uint32(1);
    out(offset:(offset+uint32(2*1-1))) = typecast(uint16(numel(bus.handMoving)), 'uint8');
    offset = offset + uint32(2*1);

    % handMoving data
    nBytes = uint32(1 * numel(bus.handMoving));
    if nBytes > uint32(0)
        if(offset+uint32(nBytes-1) > numel(out)), return, end
        out(offset:(offset+uint32(nBytes-1))) = uint8(bus.handMoving(:));
    end
    offset = offset + nBytes; %#ok<NASGU>

    valid = uint8(1);
end