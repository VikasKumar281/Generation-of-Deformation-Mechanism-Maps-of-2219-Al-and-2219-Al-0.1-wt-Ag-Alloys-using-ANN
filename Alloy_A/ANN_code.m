% TRAINING DATA BEGINS 
%strain in mm/mm, strain rate in per sec, temperature in Kelvin, flown stress in MPa
clc
p = [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6; 
    0.001 0.001 0.001 0.01 0.01 0.1	0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10;
    573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773];

t = [193.3 140 77.5 183.6 133.4 208.4 174.7 124.4 195.7 175.6 196.2 190.1 158.2 212.1 144.3 76.7 200.5 135.5 232.6 183.6 127.4 214.3 187.4 219.7 206.8 164.6 217.5 140.4 73.3 207.5 134.6 242.7 185.1 126.8 219.3 188.3 227.7 210.3 160.7 216.5 136.5 69.2 210.8 133.8 248.3 185.1 125.1 220.9 186.7 232 210.1 155.7 214.5 129.4 63.6 210.7 131.7 252.2 185.3 123.5 221.7 183.7 234.1 209.5 151.8 212.7 124.7 59.7 211.1 129.6 254.8 185.3 122.7 222.2 180.4 236.5 209.2 149.1];

%---------------------------------------------------------------------------------------------------------------------------------------------------
%TESTING DATA

pt = [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6;
     0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10;
     623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723];

tt = [171.5 108.5 206.6 103.9 203 145.6 187.9 176.2 183.1 107.7 229.6 103.1 227.6 147.5 207 187.3 185.6 104.5 240.8 102 236.6 141.9 212.4 187.2 184.7 99.9 247.8 100.6 242.1 137.1 212.8 184.6 178.9 92.7 251.4 96.7 246 133.7 213.4 181.9 175.8 88.4 254.5 95.5 248.4 131.5 214.3 179.8];

    p(2,:)=log10(p(2,:));
    pt(2,:)=log10(pt(2,:));
     %temp=100.0;
 
%NORMALIZATION BEGINS
a1=max(p(1,:));
a2=max(p(2,:));
a3=max(p(3,:));
b1n=min(p(1,:));
b2n=min(p(2,:));
b3n=min(p(3,:));
m(1)=.8/(a1-b1n);
c(1)=(.1*a1-.9*b1n)/(a1-b1n);
m(2)=.8/(a2-b2n);
c(2)=(.1*a2-.9*b2n)/(a2-b2n);
m(3)=.8/(a3-b3n);
c(3)=(.1*a3-.9*b3n)/(a3-b3n);
for i=1:1:3;
    np(i,:)=p(i,:).*m(i)+c(i);
npt(i,:)=pt(i,:).*m(i)+c(i);
end
    lt=log(t); 
for i=1:1:length(t);
    nt(i)=lt(i)/max(lt);
end
%training & simulation begins
%net = newff([0.1 0.9; 0.1 .9; 0.1 0.9],[4 1],{ 'tansig' 'purelin'},'trainlm');

net = feedforwardnet([9 1], 'trainlm');

net.layers{1}.transferFcn = 'logsig';
net.layers{2}.transferFcn = 'purelin';


       for i=1:1:1;
       net.trainParam.epochs = 10000;
       net.trainParam.goal=0.000018;
 	    net = train(net,np,nt);
 	    y2 = sim(net,np)
        max(lt)
        t_train=exp(max(lt)*y2) 
 y3=sim(net,npt);
 tt_train=exp(max(lt)*y3); 
 
 %error calculation begins
 t;
 t_train;
 
 % TRAINING ERRORS
 
 sum=0.0;
 sum1=0.0;
 rmstr=0.0;
 
 for i1=1:1:length(t);
     pct_dev_tr(i1)=(t_train(i1)-t(i1))*100/t(i1);
     dev_tr(i1)=(t_train(i1)-t(i1));
     
 end
 rmstr_1=rmstr+(dev_tr(i1)*dev_tr(i1)); 
 rmstr_1;
 D=pct_dev_tr; 
 Dabs= abs(D);
 d=max(abs(D))

 %Ye Add Kiya hai => 
 count_train = length(find(Dabs > 5));
 percent_train = (count_train / length(Dabs)) * 100;
 fprintf('%% dev > 5 in training = %.2f%%\n', percent_train);




 
 for i1=1:1:length(t);
     sum1=sum1+(t_train(i1)-t(i1))^2;
     rms_tr_err=sqrt(sum1/length(t));
 end
RMStrain=rms_tr_err
 
 %if(test_err>temp) break, end;
 %temp=test_err;
       end
%ERROR CALCULATION FOR TESTING DATA BEGINS

%[
sum2=0;
rmstst=0.0;

for i1=1:1:length(tt);
     pct_dev_tst(i1)=(tt_train(i1)-tt(i1))*100/tt(i1);
     dev_tst(i1)=(tt_train(i1)-tt(i1))/tt(i1);
     
 end
 Dst=pct_dev_tst;
 dev_tst(i1)=(tt_train(i1)-tt(i1))/tt(i1);
 Dabst= abs(Dst);
 dst=max(abs(Dst))


% Ye Add kiya (%dev > 5 testing) ke liye =>
 count_test = length(find(Dabst > 5));
 percent_test = (count_test / length(Dabst)) * 100;
 fprintf('%% dev > 5 in testing = %.2f%%\n', percent_test);




 
 %D=pct_dev_tr 
 %Dabs= abs(D)
 
 for i1=1:1:length(tt);
     rms_tst_err=sqrt(sum/length(tt));
     sum2=sum2+(tt_train(i1)-tt(i1))^2;
     rms_tst_err=sqrt(sum2/length(tt));
 end
RMStest=rms_tst_err
 %rmstr=sqrt(rmstr/length(t));
 %rmstt=0.0;
 %for i1=1:1:length(tt);
     %pct_dev_test(i1)=(tt_train(i1)-tt(i1))/tt(i1);
    %rmstt=rmstt+dev_test(i1)*dev_test(i1);
    %end
 
 % ]
 
% rmstt=sqrt(rmstt/length(tt));

%[max_tr,in1]=max(abs(pct_dev_tr))
%[max_tes,in2]=max(abs(dev_test))
%dev_tr
%dev_test
w1=net.iw{1};
w2=net.lw{2,1};
b1=net.b{1};
b2=net.b{2};
p2=fopen('AA_36.txt', 'w');

fprintf(p2,'%f %f %f \n', w1);

fprintf(p2,'\n \n' );

fprintf(p2,'%f  \n', b1);

fprintf(p2,'\n \n' );

fprintf(p2,'%f %f %f \n', w2);

fprintf(p2,'\n \n' );

fprintf(p2,'%f  \n', b2);

fclose(p2);


p5=fopen('TRAIN_AA_36.txt', 'w');
for ix=1:1:length(t);
fprintf(p5,'%f %f %f %f %f \n', (ix),t(ix),t_train(ix),D(ix), Dabs(ix));
% where D(ix) is the percentage deviation for each data point;
end
fclose(p5);

p6=fopen('TEST_AA_36.txt', 'w');
for ix=1:1:length(tt);
fprintf(p6,'%f %f %f %f %f \n', (ix),tt(ix),tt_train(ix),Dst(ix), Dabst(ix));
% where D(ix) is the percentage deviation for each data point;
end
fclose(p6);

 %Dst=pct_dev_tst 
 %Dabst= abs(Dst)
 %dst=max(abs(Dst))
 
 
 fclose('all');
