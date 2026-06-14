% TRAINING DATA BEGINS 
%strain in mm/mm, strain rate in per sec, temperature in Kelvin, flown stress in MPa
clc
p = [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6; 
    0.001 0.001 0.001 0.01 0.01 0.1	0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10 0.001 0.001 0.001 0.01 0.01 0.1 0.1 0.1 1 1 10 10 10;
    573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773 573 673 773 623 723 573 673 773 623 723 573 673 773];

t = [191.1 133 75.4 177.7 122.4 203.7 173 117.6 197.3 161 199.1 190 151.8 205.9 133.5 73.3 190.1 123 228.4 183.1 117.4 215 164.5 220.5 203 159.2 209.6 130.3 70 192.4 121.9 236.1 183.1 114.7 217.7 159.2 226.2 202.7 158.1 210 126.4 66.7 193.8 121.4 240.7 181 112 217.4 154.3 229 199.3 154.9 207.3 118.6 61.7 191.4 117 244.1 180.3 110.1 216.5 150.5 230.9 196 151 205.7 113.3 58.5 191.8 115.6 245.9 179.2 108.8 215.6 148.3 232.3 194.4 146.8];
%---------------------------------------------------------------------------------------------------------------------------------------------------
%TESTING DATA

pt = [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.3 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.6 0.6 0.6 0.6 0.6 0.6 0.6 0.6;
     0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10 0.001 0.001 0.01 0.01 1 1 10 10;
     623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723 623 723 573 773 573 773 623 723];

tt = [161.9 97.3 189.5 97.8 194.7 135.9 199.9 175.5 167.6 96.3 204.4 95.7 217.5 136.8 215.7 182 165.6 93 209.7 93.5 226.3 131.3 216.7 178.5 162.4 90.2 212.2 92.4 228.7 126.5 215.6 172.5 156.6 85.3 212.5 87.9 230 123.3 216 168.9 152.2 81.3 214.2 87.3 230.4 120.9 217 167.1];
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
    np(i,:)=p(i,:).*m(i)+c(i)
    npt(i,:)=pt(i,:).*m(i)+c(i);
end
    lt=log(t); 
for i=1:1:length(t);
    nt(i)=lt(i)/max(lt);
end
%training & simulation begins
net = newff([0.1 0.9; 0.1 .9; 0.1 0.9],[9 1],{ 'logsig' 'purelin'},'trainlm');

       for i=1:1:1;
       net.trainParam.epochs = 10000;
       net.trainParam.goal=0.000018;
 	    net = train(net,np,nt);
 	    y2 = sim(net,np);
        t_train=exp(max(lt)*y2); 
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
 D=pct_dev_tr 
 Dabs= abs(D);
 d=max(abs(D))
 
 for i1=1:1:length(t);
     sum1=sum1+(t_train(i1)-t(i1))^2;
     rms_tr_err=sqrt(sum1/length(t));
 end
RMStrain=rms_tr_err

% yaha se add kiya hai code
% ===== %dev >5 TRAINING =====

pct_dev_tr = abs((t_train - t) .* 100 ./ t);

percent_dev5_train = (length(find(pct_dev_tr > 5)) * 100) / length(t);

fprintf('Training %%dev>5 = %.2f%%\n', percent_dev5_train);


 
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
 Dst=pct_dev_tst 
 dev_tst(i1)=(tt_train(i1)-tt(i1))/tt(i1);
 Dabst= abs(Dst);
 dst=max(abs(Dst))
 
 %D=pct_dev_tr 
 %Dabs= abs(D)
 
 for i1=1:1:length(tt);
     rms_tst_err=sqrt(sum/length(tt));
     sum2=sum2+(tt_train(i1)-tt(i1))^2;
     rms_tst_err=sqrt(sum2/length(tt));
 end
RMStest=rms_tst_err


% code add kiya hai 

% ===== %dev >5 TESTING =====

pct_dev_tst = abs((tt_train - tt) .* 100 ./ tt);

percent_dev5_test = (length(find(pct_dev_tst > 5)) * 100) / length(tt);

fprintf('Testing %%dev>5 = %.2f%%\n', percent_dev5_test);


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
p2=fopen('BB_36.txt', 'w');

fprintf(p2,'%f %f %f \n', w1);

fprintf(p2,'\n \n' );

fprintf(p2,'%f  \n', b1);

fprintf(p2,'\n \n' );

fprintf(p2,'%f %f %f \n', w2);

fprintf(p2,'\n \n' );

fprintf(p2,'%f  \n', b2);

fclose(p2);


p5=fopen('TRAIN_BB_36.txt', 'w');
for ix=1:1:length(t);
fprintf(p5,'%f %f %f %f %f \n', (ix),t(ix),t_train(ix),D(ix), Dabs(ix));
% where D(ix) is the percentage deviation for each data point;
end
fclose(p5);

p6=fopen('TEST_BB_36.txt', 'w');
for ix=1:1:length(tt);
fprintf(p6,'%f %f %f %f %f \n', (ix),tt(ix),tt_train(ix),Dst(ix), Dabst(ix));
% where D(ix) is the percentage deviation for each data point;
end
fclose(p6);

 %Dst=pct_dev_tst 
 %Dabst= abs(Dst)
 %dst=max(abs(Dst))
