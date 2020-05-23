function createfigure_9_9(YMatrix1)
%CREATEFIGURE(YMatrix1)
%  YMATRIX1:  y ���ݵľ���

%  �� MATLAB �� 14-Jan-2019 10:05:33 �Զ�����

% ���� figure
figure1 = figure;

% ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% ʹ�� plot �ľ������봴������
plot1 = plot(YMatrix1,'MarkerSize',4,'Marker','.');
set(plot1(1),'DisplayName','Proposed Method','Color',[0 0 1]);
set(plot1(2),'DisplayName','EKF with delay','Color',[1 0 0]);

% ���� ylabel
ylabel('Pitch Error(Deg)','FontSize',11,'FontName','Times New Roman');

% ���� xlabel
xlabel('T(s)','FontSize',11,'FontName','Times New Roman');

% ȡ�������е�ע���Ա����������� X ��Χ
xlim(axes1,[0 3000]);
set(axes1,'XTickLabel',{'0','5','10','15','20','25','30'});
box(axes1,'on');
grid(axes1,'on');
% ���� legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',11);

