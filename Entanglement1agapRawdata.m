%entanglement Plot with 2 unit gap
clear all;
num=xlsread('EntanglementData1');
%Density
S1=num(:,1); %height
S5=num(:,2); %EntanglementDensity5percent
S10=num(:,3); %EnatanglementDensity10percent
S15=num(:,4); %EntanglementDensity15percent
S20=num(:,5); %EntanglementDensity20percent
S25=num(:,6); %EntanglementDensity25percent
S30=num(:,7); %EntanglementDensity30percent
%S40=num(:,8); %EntanglementDensity40percent
%S50=num(:,9); %EntanglementDensity50percent
%SBulk=num(:,8);%EntanglementDensitybulk
% moving average stress
%   M5 = movmean(S5,3);
%   M10 = movmean(S10,3);
%   M15 = movmean(S15,3);
%   M20 = movmean(S20,3);
%   M25 = movmean(S25,3);
%   M30 = movmean(S30,3);
%  M40 = movmean(S40,3);
%  M50 = movmean(S50,3);
%  MBulk= movmean(SBulk,3); 
%color codes
myColorMap = jet(32);
puch=[0,0.5,0];
puch1=[0.75, 0, 0.75];
loyolagray = 1/255*[200,200,200];
%StressVsStrainPlot
% h1=plot(S1,S5,'Color',myColorMap(10,:));
% the following line skip the name of the previous plot from the legend
%h1.Annotation.LegendInformation.IconDisplayStyle = 'off';
hold on
%M5=smooth(S5);
h2=plot(S1,S5,'Color',myColorMap(1,:),'DisplayName','5%-\epsilon^p-PS10%','LineWidth',1.4);
%h3=plot(S1,S10,'Color',myColorMap(14,:));
%h3.Annotation.LegendInformation.IconDisplayStyle = 'off';
%M10=smooth(S10);
h4=plot(S1,S10,'Color',puch1,'DisplayName','10%-\epsilon^p-PS10%','LineWidth',1.4);
%h5=plot(S1,S15,'g');
%h5.Annotation.LegendInformation.IconDisplayStyle = 'off';
%M15=smooth(S15);
h6=plot(S1,S15,'Color',puch,'DisplayName','15%-\epsilon^p-PS10%','LineWidth',1.4);
% h7=plot(S1,S20,'Color',myColorMap(20,:));
% h7.Annotation.LegendInformation.IconDisplayStyle = 'off';
%M20=smooth(S20);
h8=plot(S1,S20,'Color',myColorMap(22,:),'DisplayName','20%-\epsilon^p-PS10%','LineWidth',1.4);
% h9=plot(S1,S30,'Color',myColorMap(23,:));
% h9.Annotation.LegendInformation.IconDisplayStyle = 'off';
%M25=smooth(S25);
h12=plot(S1,S25,'Color',myColorMap(8,:),'DisplayName','25%-\epsilon^p-PS10%','LineWidth',1.4);
%M30=smooth(S30);
h10=plot(S1,S30,'Color','k','DisplayName','30%-\epsilon^p-PS10%','LineWidth',1.4);
% h11=plot(S1,S40,'m');
% h11.Annotation.LegendInformation.IconDisplayStyle = 'off';
%M40=smooth(S40);
%h12=plot(S1,S40,'Color',puch1,'DisplayName','40%Sample','LineWidth',1.4);
% h13=plot(S1,S50,'Color',myColorMap(24,:));
% h13.Annotation.LegendInformation.IconDisplayStyle = 'off';
%M50=smooth(S50);
%h14=plot(S1,S50,'Color',myColorMap(28,:),'DisplayName','50%Sample','LineWidth',1.4);
% h15=plot(S1,SBulk,'Color',loyolagray);
% h15.Annotation.LegendInformation.IconDisplayStyle = 'off';
%MBulk=smooth(SBulk);
%h16=plot(S1,SBulk,'k','DisplayName','BulkSample','LineWidth',1.4);
lgd = legend;
lgd.NumColumns = 1;
colormap(myColorMap);
box on
xlim([30 38])
xlabel('z/a') 
ylabel('Normalized Entanglement Density')