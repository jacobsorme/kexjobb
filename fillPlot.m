function [  ] = Untitled( data, dev, x, color )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    s = fill([x',fliplr(x')],[data(x')'+dev(x')',fliplr(data(x')')-fliplr(dev(x')')],color,'LineStyle','none','DisplayName','\pm\sigma, Standard deviation');
    s.Annotation.LegendInformation.IconDisplayStyle = 'off';
    alpha(0.2);
end

