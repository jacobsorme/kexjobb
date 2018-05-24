function [  ] = Untitled( data, dev, x, color )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    fill([x',fliplr(x')],[data(x')'+dev(x')',fliplr(data(x')')-fliplr(dev(x')')],color,'LineStyle','none','DisplayName','\pm\sigma, Standard deviation');
    alpha(0.1);
end

