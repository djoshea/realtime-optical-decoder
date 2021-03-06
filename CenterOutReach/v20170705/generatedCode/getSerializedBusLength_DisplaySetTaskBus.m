function outSize = getSerializedBusLength_DisplaySetTaskBus(bus, namePrefix)
%#codegen
% DO NOT EDIT: Auto-generated by 
%   BusSerialize.writeGetSerializedBusLengthCode('DisplaySetTaskBus')

    if nargin < 2, namePrefix = uint8(''); end
    namePrefixBytes = uint8(namePrefix(:))';
    outSize = uint32(0);
    % element taskName
    outSize = outSize + uint32(1); % bit flags
    outSize = outSize + uint32(1); % signal type
    outSize = outSize + uint32(2 + numel(namePrefixBytes) + 8); % for name (including prefix)
    outSize = outSize + uint32(2 + 4); % for units
    outSize = outSize + uint32(1); % for data type id
    outSize = outSize + uint32(1 + 2*1); % for dimensions
    outSize = outSize + uint32(1 * numel(bus.taskName)); % for taskName data 

    % element taskVersion
    outSize = outSize + uint32(1); % bit flags
    outSize = outSize + uint32(1); % signal type
    outSize = outSize + uint32(2 + numel(namePrefixBytes) + 11); % for name (including prefix)
    outSize = outSize + uint32(2 + 0); % for units
    outSize = outSize + uint32(1); % for data type id
    outSize = outSize + uint32(1 + 2*1); % for dimensions
    outSize = outSize + uint32(4 * numel(bus.taskVersion)); % for taskVersion data 


end