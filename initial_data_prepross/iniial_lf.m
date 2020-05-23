%ע���ó����example ����
% ����������Ϊ100Hz��ʱ��2s��
% MATLAB�������£�

        y= accbx_DATA7 ;
        LEN = length(y);
        f1=10;%��һ����Ƶ�źŷ���Ƶ��
        f2=30;%�ڶ�����Ƶ�źŷ���Ƶ��
        fs=1000;%������
        T=2.723;%ʱ��
        B=10;%����
        n=round(LEN);%���������
        t=linspace(0,T,n);
       
%         ����Ƶ��ͼ�п������Կ�����10Hz��30Hz�ķ�����
% MATLAB�������£�
        figure(1);
        plot(t,y);
        title('ԭʼ�ź�ʱ��');
        xlabel('t/s');
        ylabel('����');
        figure(2);
        fft_y=fftshift(fft(y));
        f=linspace(-fs/2,fs/2,n);
        plot(f,abs(fft_y));
        title('ԭʼ�ź�Ƶ��');
        xlabel('f/Hz');
        ylabel('����');
        axis([ 0 50 0 100]);
%         Ϊ�˳�30Hz�ķ���������ѡ��20Hz��ֹƵ�ʵĵ�ͨ�˲���������Ϊ40�ף���Ҫ��ø����͵Ĺ��ɴ�����������ѡ��ĸ��ߣ���MATLAB����fir1����ʵ���˲��������Ӧϵ���ļ��㡣ע��:ģ��Ƶ��f=20Hz��Ҫ��f/(fs/2)��ʽ�ӻ�Ϊ����Ƶ�ʣ���Ϊfir1�����еĲ�����
% MATLAB�������£�
        b=fir1(40, B/(fs/2));  %�˲�����ָ������������ź�
        figure(3);
        freqz(b);%���˲���Ƶ��
        fir_b = b;
%         �ź�ͨ��FIR�˲���������filter������
% MATLAB����
        y_after_fir=filter(b,1,y);  %�ź�ͨ���˲���
        
%         �۲��˲�������źŵ�ʱ����Ƶ�ף�
% ��Ƶ���п������Կ�����30Hz�ķ������˳���������10Hz�ķ�����ʱ����Ҳ���Կ�����һ�㡣ͬʱ��Ҫע�⣬����źŵ�ǰ��һ������Ч�ġ��öεĳ���Ϊ�˲���������һ�롣
% MATLAB����
        figure(4);
        hold off;
        
        plot(t,y_after_fir); hold on ;
        plot(t,y);
        title('�˲����ź�ʱ��');
        xlabel('t/s');
        ylabel('����');
        
        fft_y1=fftshift(fft(y_after_fir));
        f=linspace(-fs/2,fs/2,n);
        figure(5);
        plot(f,abs(fft_y1));
        title('�˲����ź�Ƶ��');
        xlabel('f/Hz');
        ylabel('����');
        axis([ 0 50 0 100]);