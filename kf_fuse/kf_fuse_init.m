
dim_observe = 1;      %�۲�ֵά��
n = 1;  %״̬ά�����۲�״̬ÿ��ά�ȶ���1���ٶȣ������2
% filter.A = eye(n);%[1,0,1,0;0,1,0,1;0,0,1,0;0,0,0,1]; 
% filter.A =  [1,1;0,1]; 
filterf.A =  1; 
filterf.B = 0;
filterf.u = 0;
filterf.P = eye(n);
filterf.K = zeros(n);
% filterf.H = eye(n);%[1,0,0,0;0,1,0,0];
% filterf.H =  [1,0;1,0];
filterf.H = 1;
cQ = 1e-4;
cR = 100;
filterf.Q = eye(n) * cQ;    %���������Q��R�Խ���Ԫ�ض���ȣ���Ϊ�������
filterf.R = eye(dim_observe) * cR;
% filterf.R = [500*cR  0;0     cR    ]
filterf.x = zeros(n,1); %��ʼ״̬x0
filterf.ok = 1; %��ʼ״̬x0

filter1.A =  1; 
filter1.B = 0;
filter1.u = 0;
filter1.P = eye(n);
filter1.K = zeros(n);
% filter1.H = eye(n);%[1,0,0,0;0,1,0,0];
% filter1.H =  [1,0;1,0];
filter1.H = 1;
 
filter1.Q = eye(n) * cQ;    %���������Q��R�Խ���Ԫ�ض���ȣ���Ϊ�������
filter1.R = eye(dim_observe) * cR;
% filter1.R = [500*cR  0;0     cR    ]
filter1.x = zeros(n,1); %��ʼ״̬x0
filter1.ok = 1; %��ʼ״̬x0


filter2.A =  1; 
filter2.B = 0;
filter2.u = 0;
filter2.P = eye(n);
filter2.K = zeros(n);
% filter2.H = eye(n);%[1,0,0,0;0,1,0,0];
% filter2.H =  [1,0;1,0];
filter2.H = 1;
 
filter2.Q = eye(n) * cQ;    %���������Q��R�Խ���Ԫ�ض���ȣ���Ϊ�������
filter2.R = eye(dim_observe) * cR;
% filter2.R = [500*cR  0;0     cR    ]
filter2.x = zeros(n,1); %��ʼ״̬x0
filter2.ok = 1; %��ʼ״̬x0

filter3.A =  1; 
filter3.B = 0;
filter3.u = 0;
filter3.P = eye(n);
filter3.K = zeros(n);
% filter3.H = eye(n);%[1,0,0,0;0,1,0,0];
% filter3.H =  [1,0;1,0];
filter3.H = 1;
 
filter3.Q = eye(n) * cQ;    %���������Q��R�Խ���Ԫ�ض���ȣ���Ϊ�������
filter3.R = eye(dim_observe) * cR;
% filter3.R = [500*cR  0;0     cR    ]
filter3.x = zeros(n,1); %��ʼ״̬x0
filter3.ok = 1;