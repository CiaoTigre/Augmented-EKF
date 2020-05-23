
%���Ļ�����ͼ

%pith �ǶȱȽ�
figure(1);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(   uavTruth.pitch_deg,'r-','markersize',6, 'linewidth', 2);hold on;grid on;
plot(   uavEst_well_result .pitch_deg,'b. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
plot(   uavEst_100ms_lag.pitch_deg,  'g. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
% Label figure
grid on;
axis([1  30000 -20 30]);  %��ʾ��Χ
lengend_size=legend('pitch_{truth}','pitch_{de-time-err}','pitch_{with-time-err}');
set(lengend_size,'Fontsize',20);
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('Time(10ms)','FontName','Times New Roman','FontSize',20)
ylabel('Pitch(degree)','FontName','Times New Roman','FontSize',20);
set(gca,'GridAlpha',0.9);
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('pith�ں����� '));


%roll �ǶȱȽ�
figure(2);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(   uavTruth.roll_deg,'r-','markersize',6, 'linewidth', 3);hold on;grid on;
plot(   uavEst_well_result .roll_deg,'b. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
plot(   uavEst_200ms_lag.roll_deg,  'g. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
% Label figure
grid on;
axis([1  30000 -50 50]);  %��ʾ��Χ
lengend_size=legend('Roll_{truth}','Roll_{de-time-err}','Roll_{with-time-err}');
set(lengend_size,'Fontsize',20);
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('Time(10ms)','FontName','Times New Roman','FontSize',20)
ylabel('Roll(degree)','FontName','Times New Roman','FontSize',20);
set(gca,'GridAlpha',0.9);
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('Roll�ں����� '));

%yaw �ǶȱȽ�
figure(3);
hold off;
wrap = @(angleDeg)(mod(angleDeg+180,360)-180); % Wrap from -180deg to 180deg.
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% plot(  wrap( uavTruth.yaw_deg),'r-','markersize',6, 'linewidth', 3);hold on;grid on;
plot(  wrap( uavEst_well_result .yaw_deg),'b. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
plot(   wrap(uavEst_100ms_lag.yaw_deg),  'g. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
% Label figure
grid on;
% axis([1  30000 -50 50]);  %��ʾ��Χ
lengend_size=legend('Yaw_{truth}','Yaw_{de-time-err}','Yaw_{with-time-err}');
set(lengend_size,'Fontsize',20);
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('Time(10ms)','FontName','Times New Roman','FontSize',20)
ylabel('Yaw(degree)','FontName','Times New Roman','FontSize',20);
set(gca,'GridAlpha',0.9);
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('yaw�ں����� '));


%�ۺϱȽ�
figure(4);
subplot(3,1,1)
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(   uavTruth.pitch_deg,'r-','markersize',6, 'linewidth', 2);hold on;grid on;
plot(   uavEst_well_result .pitch_deg,'b--. ','markersize',6, 'linewidth', 2);hold on;grid on; 
plot(   uavEst_100ms_lag.pitch_deg,  'g--. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
% Label figure
grid on;
axis([1  30000 -20 30]);  %��ʾ��Χ
lengend_size=legend('pitch_{truth}','pitch_{de-time-err}','pitch_{with-time-err}');
set(lengend_size,'Fontsize',20);
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('Time(10ms)','FontName','Times New Roman','FontSize',20)
ylabel('Pitch(degree)','FontName','Times New Roman','FontSize',20);
set(gca,'GridAlpha',0.9);
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('pith�ں����� '));

%roll �ǶȱȽ�
subplot(3,1,2)
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(   uavTruth.roll_deg,'r-','markersize',6, 'linewidth', 3);hold on;grid on;
plot(   uavEst_well_result .roll_deg,'b. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
plot(   uavEst_200ms_lag.roll_deg,  'g. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
% Label figure
grid on;
axis([1  30000 -50 50]);  %��ʾ��Χ
lengend_size=legend('Roll_{truth}','Roll_{de-time-err}','Roll_{with-time-err}');
set(lengend_size,'Fontsize',20);
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('Time(10ms)','FontName','Times New Roman','FontSize',20)
ylabel('Roll(degree)','FontName','Times New Roman','FontSize',20);
set(gca,'GridAlpha',0.9);
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('Roll�ں����� '));

%yaw �ǶȱȽ�
subplot(3,1,3)
hold off;
wrap = @(angleDeg)(mod(angleDeg+180,360)-180); % Wrap from -180deg to 180deg.
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(  wrap( uavTruth.yaw_deg),'r-','markersize',6, 'linewidth', 3);hold on;grid on;
plot(  wrap( uavEst_well_result .yaw_deg),'b. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
plot(   wrap(uavEst_100ms_lag.yaw_deg),  'g. ','markersize',6, 'linewidth', 1.1);hold on;grid on; 
% Label figure
grid on;
% axis([1  30000 -50 50]);  %��ʾ��Χ
lengend_size=legend('Yaw_{truth}','Yaw_{de-time-err}','Yaw_{with-time-err}');
set(lengend_size,'Fontsize',20);
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('Time(10ms)','FontName','Times New Roman','FontSize',20)
ylabel('Yaw(degree)','FontName','Times New Roman','FontSize',20);
set(gca,'GridAlpha',0.9);
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('yaw�ں����� '));



