clear all
%% The line and load data of 69-node Radila Distributio System 
    %Branch SE   RE            r           x         
    %Number Node Node         (?)         (?)        
% LD=[1       1       2       0.0005      0.0012      
%     2       2       3       0.0005      0.0012      
%     3       3       4       0.0015      0.0036      
%     4       4       5       0.0251      0.0294     
%     5       5       6       0.3660      0.1864      
%     6       6       7       0.3811      0.1941     
%     7       7       8       0.0922      0.0470      
%     8       8       9       0.0493      0.0251      
%     9       9       10      0.8190      0.2707     
%     10      10      11      0.1872      0.0619      
%     11      11      12      0.7114      0.2351      
%     12      12      13      1.0300      0.3400     
%     13      13      14      1.0440      0.3450      
%     14      14      15      1.0580      0.3496      
%     15      15      16      0.1966      0.0650      
%     16      16      17      0.3744      0.1238      
%     17      17      18      0.0047      0.0016      
%     18      18      19      0.3276      0.1083     
%     19      19      20      0.2106      0.0690      
%     20      20      21      0.3416      0.1129      
%     21      21      22      0.0140      0.0046      
%     22      22      23      0.1591      0.0526      
%     23      23      24      0.3463      0.1145      
%     24      24      25      0.7488      0.2475     
%     25      25      26      0.3089      0.1021     
%     26      26      27      0.1732      0.0572      
%     27      3       28      0.0044      0.0108      
%     28      28      29      0.0640      0.1565      
%     29      29      30      0.3978      0.1315      
%     30      30      31      0.0702      0.0232      
%     31      31      32      0.3510      0.1160      
%     32      32      33      0.8390      0.2816      
%     33      33      34      1.7080      0.5646      
%     34      34      35      1.4740      0.4873      
%     35      3       36      0.0044      0.0108      
%     36      36      37      0.0640      0.1565      
%     37      37      38      0.1053      0.1230      
%     38      38      39      0.0304      0.0355      
%     39      39      40      0.0018      0.0021      
%     40      40      41      0.7283      0.8509      
%     41      41      42      0.3100      0.3623      
%     42      42      43      0.0410      0.0478      
%     43      43      44      0.0092      0.0116      
%     44      44      45      0.1089      0.1373      
%     45      45      46      0.0009      0.0012      
%     46      4       47      0.0034      0.0084      
%     47      47      48      0.0851      0.2083      
%     48      48      49      0.2898      0.7091      
%     49      49      50      0.0822      0.2011      
%     50      8       51      0.0928      0.0473      
%     51      51      52      0.3319      0.1114      
%     52      9       53      0.1740      0.0886      
%     53      53      54      0.2030      0.1034      
%     54      54      55      0.2842      0.1447     
%     55      55      56      0.2813      0.1433     
%     56      56      57      1.5900      0.5337      
%     57      57      58      0.7837      0.2630      
%     58      58      59      0.3042      0.1006      
%     59      59      60      0.3861      0.1172      
%     60      60      61      0.5075      0.2585      
%     61      61      62      0.0974      0.0496      
%     62      62      63      0.1450      0.0738      
%     63      63      64      0.7105      0.3619      
%     64      64      65      1.0410      0.5302      
%     65      11      66      0.2012      0.0611      
%     66      66      67      0.0047      0.0014      
%     67      12      68      0.7394      0.2444      
%     68      68      69      0.0047      0.0016];
% %%    Bus        P             Q
% %     Number     KW            KVAr
% BD=[   1         0             0
%        2         0             0
%        3         0             0
%        4         0             0
%        5         0             0
%        6         2.60          2.20
%        7         40.40         30.00
%        8         75.00         54.00
%        9         30.00         22.00
%        10        28.00         19.00
%        11        145.00        104.00
%        12        145.00        104.00
%        13        8.00          5.00
%        14        8.00          5.50
%        15        0             0
%        16        45.50         30.00
%        17        60.00         35.00
%        18        60.00         35.00
%        19        0             0
%        20        1.00          0.60
%        21        114.00         81.00
%        22        5.00          3.50
%        23        0             0
%        24        28.00         20.00
%        25        0             0
%        26        14.00         10.00
%        27        14.00         10.00
%        28        26.00         18.60
%        29        26.00         18.60
%        30        0             0
%        31        0             0
%        32        0             0
%        33        14.00         10.00
%        34        19.50         14.00
%        35        6.00          4.00
%        36        26.00         18.55
%        37        26.00         18.55
%        38        0             0
%        39        24.00         17.00
%        40        24.00         17.00
%        41        1.20          1.00
%        42        0             0
%        43        6.00          4.30
%        44        0             0
%        45        39.22         26.30
%        46        39.22         26.30
%        47        0             0
%        48        79.00         56.40
%        49        384.70        274.50
%        50        384.70        274.50
%        51        40.50         28.30
%        52        3.60          2.70
%        53        4.35          3.50
%        54        26.40         19.00
%        55        24.40         17.20
%        56        0             0
%        57        0             0
%        58        0             0
%        59        100.00         72.00
%        60        0             0
%        61        1244.00        888.00
%        62        32.00         23.00
%        63        0             0
%        64        227.00        162.00
%        65        59.00         42.00
%        66        18.00         13.00
%        67        18.00         13.00
%        68        28.00         20.00
%        69        28.00         20.00];
% %% Line data of 33 bus system 
% % Bus      from    To         R           X
% Number   Bus     Bus       ohm         ohm
LD=[1   	1       2   	0.0922  	0.0470  ;	
    2       2       3   	0.4930  	0.2511 	;
    3       3       4   	0.3660  	0.1864 	;
    4       4       5   	0.3811  	0.1941 	;
    5       5       6   	0.8190  	0.7070 	;
    6       6       7   	0.1872  	0.6188 	;
    7       7       8   	0.7114  	0.2351 	;
    8       8       9   	1.0300  	0.7400 	;
    9       9       10   	1.0440  	0.7400 	;
    10      10      11   	0.1966  	0.0650 	;
    11      11      12  	0.3744  	0.1238 	;
    12      12      13  	1.4680  	1.1550 	;
    13      13      14  	0.5416  	0.7129 	;
    14      14      15  	0.5910  	0.5260 	;
    15      15      16  	0.7463  	0.5450 	;
    16      16      17  	1.2890  	1.7210 	;
    17      17      18  	0.7320  	0.5740 	;
    18      2       19  	0.1640  	0.1565 	;
    19      19      20  	1.5042  	1.3554 	;
    20      20  	21  	0.4095  	0.4784 	;
    21      21  	22  	0.7089  	0.9373 	;
    22      3       23  	0.4512  	0.3083 	;
    23      23      24  	0.8980  	0.7091 	;
    24      24      25  	0.8960  	0.7011 	;
    25      6       26  	0.2030  	0.1034 	;
    26      26      27  	0.2842  	0.1447 	;
    27      27      28  	1.0590  	0.9337 	;
    28      28      29  	0.8042  	0.7006 	;
    29      29      30  	0.5075  	0.2585 	;
    30      30      31  	0.9744  	0.9630 	;
    31      31      32  	0.3105  	0.3619 	;
    32      32      33  	0.3410  	0.5302] ;

 
 %% Bus Data of 33 bus system 
    %Branch     P(kw)  Q(kVAr)
    %Number 
BD=[1           0       0
    2           100 	60;
    3           90  	40;
    4       	120 	80;
    5           60  	30;
    6           60      20;
    7           200 	100;
    8           200 	100;
    9           60      20;
    10          60      20;
    11          45      30;
    12          60      35;
    13          60      35;
    14          120     80;
    15          60      10;
    16          60      20;
    17          60      20;
    18          90      40;
    19          90      40;
    20          90      40;
    21      	90      40;
    22      	90      40;
    23      	90      40;
    24          420 	200;
    25          420 	200;
    26          60      25;
    27          60      25;
    28          60      20;
    29      	120 	70;
    30      	200 	600;
    31          150 	70;
    32          210 	100;
    33          60      40];
%% Data Conversion in pu 
BMVA=100;                   % Base MVA value 
BKVa=12.66;                 % Base KVA value 
BZ=(BKVa)^2/BMVA;           % Base Impedance 
LD(:,4)= LD(:,4)/BZ;        % Convert branch reisitance in pu
LD(:,5)= LD(:,5)/BZ;        % Convert branch inductance in pu 
BD(:,2)=BD(:,2)/(1000*BMVA);% Convert real power in pu
BD(:,3)=BD(:,3)/(1000*BMVA);% Convert reactive power in pu
%% BIBC Matrix formation
bibc=zeros(size(BD,1)-1,size(LD,1));
for i=1:size(LD,1)
    bibc(:,LD(i,3))=bibc(:,LD(i,2));
    bibc(LD(i,1),LD(i,3))=1;
end
bibc(:,1)=[];               %BIBC Matrix
Z=complex(LD(:,4),LD(:,5)); %branch impedance
ZD=diag(Z);                 %makeing it diagonal
bcbv=bibc'*ZD;              %BCBV Matrix 
S=complex(BD(:,2),BD(:,3)); % Complex Power 
S(1,:)=[];
V0=ones(size(LD,1),1);               % Assume intial voltage 1 pu  
V=V0;
%% Load flow programe 
iter=input('no of iteration     ');
 for i=1:iter
   I=conj(S./V);              % injected current
   IB=bibc*I;                 % Branch Current 
   dV=bcbv*bibc*I;            % V1-Vbus 
    V=V0-dV;                   % Volatge of different bus 
end
%% Show Output voltage data
V=[1;V];                   % putting first bus as 1pu(central bus)
[Vang Vmag]=cart2pol(real(V),imag(V));% Convert Voltage in polar coordinate 
V=[Vmag Vang];
display(IB)
display(V)
%% Graph of voltage magnitude and angle vs bus no  
figure(1)
plot(Vmag,'DisplayName','Vmag','YDataSource','Vmag');
title('Voltage magnitude at respective bus')
xlabel('Number of bus')
ylabel('Voltage magnitude(pu)')
figure(2)
plot(Vang,'DisplayName','Vang','YDataSource','Vang');
title('Voltage magnitude at respective bus')
xlabel('Number of bus')
ylabel('Voltage Angle(radian)')
%% Calculation of Loss
%calculation of loss by different method 
for j=1:size(LD,1)
    Ploss(j)=IB(j)*(V(LD(j,2))-V(LD(j,3)));
end
% for j=1:size(LD,1)
%     PLoss(j)=IB(j)^2*LD(j,4);
% end
% PLoss=PLoss';
% PLosssum=sum(PLoss);
% [F G]=cart2pol(real(PLosssum),imag(PLosssum))
Ploss=Ploss';
Ptotalloss=sum(Ploss);
[B C]=cart2pol(real(Ptotalloss),imag(Ptotalloss))
%% Stability index (L Index);
for i=1:size(LD,1)
    Pf(i)=IB(i)*V(LD(i,2));
    Pb(i)=IB(i)*V(LD(i,3)); 
end
h=(-1)^(0.5);
for j=1:size(LD,1)
    L(j)=(4/((V(LD(j,1)))^4))*(((real(Pb(j))*LD(j,5)*h-imag(Pb(j))*h*LD(j,4))^2)+(((V(LD(j,1)))^2)*(real(Pb(j))*LD(j,4)+h*imag(Pb(j))*h*LD(j,5))));
end
L=real(L);
M=find(L==max(L))+1;



