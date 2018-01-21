load unnamed
muD =mean(unnamed);
sigmaD = std(unnamed);

% end
% save mu_neutral_000029301 muD
% save sigmaD_neutral_000029301 sigmaD
% [sortedmuD, indd] = sort(muD,'ascend');
% figure, plot(sortedmuD,'k')
% hold on
% plot(sigmaD(indd),'r')
% hold on
% plot(sortedmuD,'k')
% figure, plot(sortedmuD,'k.')
% figure, plot(sigmaD(indd),'r.')
% %%plot the trajectory
x = muD;
y = sigmaD ;

%
x_min= min(x);
x_max= max(x);
% x = (x-x_min)/(x_max- x_min);
m=sort(x,'ascend');
% y_min= min(y);
% y_max= max(y);
% y = (y-y_min)/(y_max- y_min);
s=sort(y,'ascend');

figure,
plot(m,'r-')
hold on
plot(s,'b-')
legend('mean deviation','standard deviation','line');
hold off
% xlabel(sprintf('Neutral frames'))
% ylabel(sprintf('distance'))
title('mean and standard deviation of distance of landmarking points ')
%


% 
% x = 0:0.1:10;
% y = 1 + sin(x);
% I create some yu and yl here, for the example
% tt = 5;
% figure,
% yu = y+.1;
% yl = y-.1;
% fill([x(1:tt,:) fliplr(x(1:tt,:))], [yu(1:tt,:) fliplr(yl(1:tt,:))], [.9 .9 .9], 'linestyle', 'none')
% hold all
% plot(x(1:tt,:),y(1:tt,:),'bo-')

%%
% plot(sigmaD,'g'); hold on;
% plot(muD,'r'); hold on;
% xlabel(sprintf('Neutral frames'))
% %
% ylabel(sprintf('distance'))
% title('mean and standard deviation of distance of landmarking points of face on a neutral emotion video')
% 
%       
% legend('standard deviation','mean deviation','line');

%  shadedErrorBar(muD,sigmaD,'g');

