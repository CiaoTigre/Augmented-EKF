%% �����ı��ļ��е����ݡ�
% ���ڴ������ı��ļ��������ݵĽű�:
%
%    G:\kalman_study\suas_code_v1\SUAS_Code\experien_data\�˲������㣨����2��.csv
%
% Ҫ��������չ������ѡ�����ݻ������ı��ļ��������ɺ���������ű���

% �� MATLAB �Զ������� 2017/06/09 16:13:51

%% ��ʼ��������
filename = 'G:\kalman_study\suas_code_v1\SUAS_Code\experien_data\�˲������㣨����2��.csv';
delimiter = ',';
startRow = 2;

%% ÿ���ı��еĸ�ʽ:
%   ��1: ˫����ֵ (%f)
%	��2: ˫����ֵ (%f)
%   ��3: ˫����ֵ (%f)
%	��4: ˫����ֵ (%f)
%   ��5: ˫����ֵ (%f)
%	��6: ˫����ֵ (%f)
%   ��7: ˫����ֵ (%f)
%	��8: ˫����ֵ (%f)
%   ��9: ˫����ֵ (%f)
%	��10: ˫����ֵ (%f)
%   ��11: ˫����ֵ (%f)
%	��12: ˫����ֵ (%f)
%   ��13: ˫����ֵ (%f)
%	��14: ˫����ֵ (%f)
%   ��15: ˫����ֵ (%f)
%	��16: ˫����ֵ (%f)
%   ��17: ˫����ֵ (%f)
%	��18: ˫����ֵ (%f)
%   ��19: ˫����ֵ (%f)
%	��20: ˫����ֵ (%f)
%   ��21: ˫����ֵ (%f)
%	��22: ˫����ֵ (%f)
%   ��23: ˫����ֵ (%f)
%	��24: ˫����ֵ (%f)
%   ��25: ˫����ֵ (%f)
%	��26: ˫����ֵ (%f)
% �й���ϸ��Ϣ������� TEXTSCAN �ĵ���
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% ���ı��ļ���
fileID = fopen(filename,'r');

%% ���ݸ�ʽ��ȡ�����С�
% �õ��û������ɴ˴������õ��ļ��Ľṹ����������ļ����ִ����볢��ͨ�����빤���������ɴ��롣
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN,'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% �ر��ı��ļ���
fclose(fileID);

%% ���޷���������ݽ��еĺ���
% �ڵ��������δӦ���޷���������ݵĹ�����˲�����������롣Ҫ�����������޷���������ݵĴ��룬�����ļ���ѡ���޷������Ԫ����Ȼ���������ɽű���

%% ����������������б�������
vb_f_x_DATA1 = dataArray{:, 1};
vb_f_y_DATA2 = dataArray{:, 2};
vb_f_z_DATA3 = dataArray{:, 3};
v_b_l_x_DATA4 = dataArray{:, 4};
v_b_l_y_DATA5 = dataArray{:, 5};
v_b_l_z_DATA6 = dataArray{:, 6};
accbx_DATA7 = dataArray{:, 7};
accby_DATA8 = dataArray{:, 8};
accbz_DATA9 = dataArray{:, 9};
gpspx_DATA10 = dataArray{:, 10};
gpspy_DATA11 = dataArray{:, 11};
gpspz_DATA12 = dataArray{:, 12};
gpsvx_DATA13 = dataArray{:, 13};
gpsvy_DATA14 = dataArray{:, 14};
gpsvz_DATA15 = dataArray{:, 15};
gpspx_b_DATA16 = dataArray{:, 16};
gpspy_b_DATA17 = dataArray{:, 17};
gpsvx_b_DATA18 = dataArray{:, 18};
gpsvy_b_DATA19 = dataArray{:, 19};
USER_DATA20 = dataArray{:, 20};
MAG_X = dataArray{:, 21};
MAG_Y = dataArray{:, 22};
MAG_Z = dataArray{:, 23};
Angle_ROL1 = dataArray{:, 24};
Angle_PIT1 = dataArray{:, 25};
Angle_YAW1 = dataArray{:, 26};


%% �����ʱ����
clearvars filename delimiter startRow formatSpec fileID dataArray ans;