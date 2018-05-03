%% Extended Data Fig 6
% requires: COBRA toolbox
clear
moth=readCbModel('iAI563.xml');
moth=changeRxnBounds(moth,'EX_h2(e)',-32,'l');
moth=changeRxnBounds(moth,'EX_glc-D(e)',0,'l');
moth=changeRxnBounds(moth,'EX_lac-L(e)',0,'u');
moth=changeRxnBounds(moth,'EX_for(e)',0,'u');
moth=changeRxnBounds(moth,'EX_co(e)',0,'l');

for i = 81:-1:1
    ii(i)=0.1*(i-1);
    moth=changeRxnBounds(moth,'ATPM',ii(i),'b');
    sol=optimizeCbModel(moth,'max',1);
    if sol.f==0
        y1(i)=sol.f;
        y2(i)=0;
        y3(i)=0;
        y4(i)=0;
        x1(i)=ii(i);
    else
        y1(i)=sol.f;
        y2(i)=sol.x(cellfun(@(s) ~isempty(strfind(s,'EX_co2(e)')),moth.rxns));
        y3(i)=sol.x(cellfun(@(s) ~isempty(strfind(s,'EX_ac(e)')),moth.rxns));
        y4(i)=sol.x(cellfun(@(s) ~isempty(strfind(s,'EX_h2(e)')),moth.rxns));
        x1(i)=sol.x(cellfun(@(s) ~isempty(strfind(s,'ATPM')),moth.rxns));
    end
end

figure()
[ax, h1,h2]=plotyy(x1,y1,x1,-y2);
set(ax(1),'ycolor','blue','color','none');
set(ax(2),'ycolor','red','color','none');
set(ax,'FontSize',25)
xlabel('ATP Maintenance (mmol gCDW^-^1 hr^-^1)','FontSize',23,'FontName','Arial')
ylabel(ax(1),'Growth Rate (hr^-^1)','FontSize',23,'FontName','Arial')
ylabel(ax(2),'CO_2 Consumption Rate (mmol gCDW^-^1 hr^-^1)','FontSize',23,'FontName','Arial')
set(h1, 'linestyle','-','color','b','linewidth',3);
set(h2, 'linestyle','-','color','r','linewidth',3);
set(ax, 'xtick', 0:2:8)
set(ax(1), 'YLIM', [0 0.05])
set(ax(1), 'YTICK', 0:.01:0.05)
set(ax(2), 'YLIM', [0 20])
set(ax(2), 'YTICK', 0:4:20)
axis(ax(1),'square')
axis(ax(2),'square')
box off
set(gca, 'color', 'none');
