truthLineType    = '-';
estimateLineType = '.';
markerSize       = 4;
linewidth        = 1;

% 
% figure(4);
% hold off;
% plot(my_est_save.ini_potion(:,3),estimateLineType, 'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% % plot(uavEst.h_msl_m, estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% plot(uavTruth.h_msl_m,truthLineType, 'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% plot(my_est_save.est_pos(:,3),estimateLineType, 'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% % Label figure
% figure(gcf) % Bring figure to front
% set(gcf,'name',sprintf('λ���ں����� '));

% 
% figure(5);
% hold off;
% plot(my_est_save.ad_speed(:,3),estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% plot(my_est_save.ini_speed(:,3),estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% plot(uavTruth.v_ned_mps(:,3),'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% plot(my_est_save.est_v(:,3),estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% % Label figure
% figure(gcf) % Bring figure to front
% set(gcf,'name',sprintf('�ٶ��ں����� '));

% 
figure(1);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(Pith_data,'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.pith_lag,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
plot(my_est_save.pith,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('pith�ں����� '));
% 
figure(2);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(Roll_data,'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.roll_lag,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
plot(my_est_save.roll,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('roll�ں����� '));

figure(3);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(Yaw_data,'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.yaw_lag,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
plot(my_est_save.yaw,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
plot(my_est_save.yaw_mag,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('yaw�ں����� '));

figure(4);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.Acc_gps(:,3),'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.Acc(:,3),'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% plot(my_est_save.yaw,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 

% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('z����ٶ� '));


figure(5);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
% ԭʼ�ٶ�
plot(my_est_save.ini_speed(:,3),'r-+','markersize',6, 'linewidth', 1.1);hold on; 
% �����ٶȼӱ�
 plot(my_est_save.inter_speed(:,3),'b','markersize',4, 'linewidth', 1.1);hold on;
%  �ں��ٶ�
% plot(my_est_save.est_v(:,3),'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% set(gca, 'Grid', '--');
grid on;
axis([0 1300 -5 3]);  %��ʾ��Χ
legend('V_{GPS}','V_{INS-intergral}');
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('time(40ms)','FontName','Times New Roman','FontSize',16)
ylabel('V(m/s)','FontName','Times New Roman','FontSize',16);
set(gca,'GridAlpha',0.9);

% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('z���ٶ� '));


figure(6);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.ini_potion(:,3),'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
%  plot(my_est_save.inter_speed,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
plot(my_est_save.est_pos(:,3),'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('z�߶� '));


figure(7);
hold off;
% plot(my_est_save.kalman_y_v_est,estimateLineType,'markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
plot(my_est_save.ini_speed(:,1),'r','markersize',markerSize, 'linewidth', linewidth);hold on;grid on;
 plot(my_est_save.inter_speed(:,1),'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
plot(my_est_save.est_v(:,1),'markersize',markerSize, 'linewidth', linewidth);hold on;grid on; 
% Label figure
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('x_v'));


figure(11);
hold off;
% С����������ֵ
[correlation_off_ini_acc, energe]= correlation_of_two_singnal(my_est_save.Acc( : ,3),my_est_save.Acc_gps( : ,3));
plot(-50:50,correlation_off_ini_acc,'r+','markersize',markerSize, 'linewidth', linewidth);hold on; 
% Label figure
grid on;
axis([-50 50 -1 1]);  %��ʾ��Χ  
set(gca,'xtick',-50:10:50);%�����ܶ�
legend('INS-GPS{auto-correlation}' );
set(gca, 'GridLineStyle', '--','FontName','Times New Roman','FontSize',16,'LineWidth',1);%��������
xlabel('time-offset(40ms)','FontName','Times New Roman','FontSize',16)
ylabel(' ','FontName','Times New Roman','FontSize',16);
set(gca,'GridAlpha',0.9);
title('auto-correlation for acceleration of GPS and INS');
figure(gcf) % Bring figure to front
set(gcf,'name',sprintf('gps�ٶȲ�ֵõ��ļ��ٶ���Ӽ���ض�'));

