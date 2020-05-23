%% �����ı��ļ��е����ݡ�
% ���ڴ������ı��ļ��������ݵĽű�:
%
%    G:\kalman_study\suas_code_v1\SUAS_Code\experien_data\��̬�Ա�.csv
%
% Ҫ��������չ������ѡ�����ݻ������ı��ļ��������ɺ���������ű���

% �� MATLAB �Զ������� 2017/06/09 15:10:37

%% ��ʼ��������
filename = 'G:\kalman_study\suas_code_v1\SUAS_Code\experien_data\��̬�Ա�.csv';
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
% �й���ϸ��Ϣ������� TEXTSCAN �ĵ���
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

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
ACC_X = dataArray{:, 1};
ACC_Y = dataArray{:, 2};
ACC_Z = dataArray{:, 3};
GYR_X = dataArray{:, 4};
GYR_Y = dataArray{:, 5};
yaw_mag = dataArray{:, 6}/100;
roll_dcm = dataArray{:, 7}/100;
pit_dcm = dataArray{:, 8}/100;
yaw_dcm = dataArray{:, 9}/100;
Angle_ROL = dataArray{:, 10};
Angle_PIT = dataArray{:, 11};
Angle_YAW = dataArray{:, 12};


%% �����ʱ����
clearvars filename delimiter startRow formatSpec fileID dataArray ans;