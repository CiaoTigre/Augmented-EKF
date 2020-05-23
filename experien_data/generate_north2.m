%% �����ı��ļ��е����ݡ�
% ���ڴ������ı��ļ��������ݵĽű�:
%
%    G:\kalman_study\suas_code_v1\SUAS_Code\experien_data\up_down.csv
%
% Ҫ��������չ������ѡ�����ݻ������ı��ļ��������ɺ���������ű���

% �� MATLAB �Զ������� 2017/04/12 10:03:45

%% ��ʼ��������
filename = 'G:\kalman_study\suas_code_v1\SUAS_Code\experien_data\north_south2.csv';
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
% �й���ϸ��Ϣ������� TEXTSCAN �ĵ���
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

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
gx_data = dataArray{:, 1};
gy_data = dataArray{:, 2};
gz_data = dataArray{:, 3};
ax_data = dataArray{:, 4};
ay_data = dataArray{:, 5};
az_data = dataArray{:, 6};
mx_data = dataArray{:, 7};
my_data = dataArray{:, 8};
mz_data = dataArray{:, 9};
px_data = dataArray{:, 10};
py_data = dataArray{:, 11};
pz_data = dataArray{:, 12};
vx_data = dataArray{:, 13};
vy_data = dataArray{:, 14};
vz_data = dataArray{:, 15};
Roll_data = dataArray{:, 16};
Pith_data = dataArray{:, 17};
Yaw_data = dataArray{:, 18};
USER_DATA1 = dataArray{:, 19};
time_DATA1 = dataArray{:, 20};


%% �����ʱ����
clearvars filename delimiter startRow formatSpec fileID dataArray ans;