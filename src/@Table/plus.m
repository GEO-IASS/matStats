function res = plus(this, arg)
%PLUS  Overload the plus operator for Table objects
%
%   output = plus(input)
%
%   Example
%   plus
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-08-02,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

if isa(arg, 'Table')
    arg = arg.data;
end

newData = bsxfun(@plus, this.data, cast(arg, class(this.data)));

res = Table.create(newData, 'parent', this);