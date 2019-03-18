function [Y,Xf,Af] = ANNFun(X,~,~)
%FUN neural network simulation function.
%
% Auto-generated by MATLAB, 17-Mar-2019 19:36:30.
% 
% [Y] = fun(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 4xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 2xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [1;0;0;0];
x1_step1.gain = [0.000500125031257815;2000;2000;2000];
x1_step1.ymin = -1;

% Layer 1
b1 = [4.9797988049380270681;-4.0288048526695572349;5.5952385256466845576;0.79731222173569304967;-4.0094191364692921553;1.0135822699730923091;-12.16777456259432455;-8.7441651622341467487;-2.2664825282366876102;3.4910938914309372905];
IW1_1 = [3.9209009871784306078 0.0033957213779193043401 0.0002201329131320599276 0.0029630787835919912727;0.083155093390186229918 -0.021011052684977417349 -2.8733609097168462121 -0.023724222291500635801;-0.0052286753132808356376 4.2133032582656984033 0.012958726979371474816 -0.0049915670476772307923;1.8995097338761124384 -1.7807449009878761892 -0.15682769348672992438 -0.56391422921077882791;0.15287080797447416547 -4.4081669020470437559 -0.007280396195200881243 0.0075492469117245655438;1.3039413899555503118 -0.0041299763331465282057 -0.0020747097583476204787 -0.0014967795222914021327;-0.049263454225581759793 -5.9897543431958384375 -3.7700846979218094468 0.066016794024513700267;-0.4094154095469180743 -0.049353162635300679151 -6.8928678605503721499 0.02079621724732176255;1.2410967056482955506 0.040311535082032633193 0.018992436159271302437 0.019200258670752628348;0.42345025373282463299 0.023307302890830362829 0.0053152081573426658914 2.6865661046199820206];

% Layer 2
b2 = [-0.52367341024319502552;4.7145099815083408856;-5.8203803880581395092;-2.7343242556045033176;1.1443296243925094036;6.0206136045579849991;2.3908729814768783228;0.42714966428164646839;-1.3578629320465602781;6.6107645705233162303];
LW2_1 = [-0.25067283131273715435 0.8263879733642015557 0.33633729069844120474 0.23503056201516281387 4.0565300297537989493 0.30805802268276522016 -1.5842388220040126701 3.8588519439700990077 1.2005249944064488865 0.57466929708055947135;-0.63235075618696623412 0.61213236667962589443 -2.9959480643501463781 -0.12765922975798760231 -0.31381536946823312961 4.5482388327711369413 5.2920688867324789939 2.0595958738084241268 3.0527071898213820056 -11.076545689713297449;0.93572770597010646032 1.1384639404166294607 5.1329102462029849718 0.0018860745072044157906 1.7244543612104359376 1.1062896433666142837 -3.2435974068663750991 3.4517501960499088476 1.5653742239495269661 -0.18476079658307995035;4.7425083475345291006 0.43766502658905032108 -1.5182638598091497961 0.02243875539476893749 -0.6290396599735926797 -0.85055332933432825637 1.4143619146950561216 1.5184894029323097175 1.4943132700773227306 0.4390277429292143152;1.7515100795079601159 0.99668358910022669672 0.31366650361831099891 -0.062983113235460311263 0.94255645670454302198 -1.1264299552565104623 1.1086881836560769088 1.791604152345961154 -2.3925715247871695013 -1.2870692438157333992;-0.06743422848973003314 -3.9413917826626536645 -2.3408543194927746711 0.21954537128199647089 -6.9356781183058737739 2.1881138948369187602 -0.15247482554809363431 1.9398246945650245987 2.0156564745262190996 0.10849482252611207522;1.8901316534108592027 0.38066774422946458856 0.33390173763655989214 2.2387495622336275325 0.40380897717928998514 1.2463176693487618696 2.0665303378623227637 -0.064620450703384541002 0.34647389635689235243 0.44202290399676918975;-0.61766702752034974289 1.0193155795487480741 -1.2534738153796276539 -0.070886934808613591419 2.605777997491219633 0.32226343963744685794 -2.6816534355287564573 -1.258548506770333919 0.63552836445072069527 7.6929877381765976452;-0.38016465086473988366 -0.16676179377435906837 0.73901699181833746533 -0.090452108125335384248 -1.1014730155136536194 2.6241365181832216891 1.4262844841135529084 -2.1419200282166914739 -0.85291401907481390054 -1.7356423072844409106;-4.2566768532193783869 0.98101570067539711761 -2.2304775968709558143 -0.045310682715100122908 -0.72190528661696196089 -0.96088668605387850263 3.3906056726950590807 2.5628480851748056679 0.054383270406360616211 -0.091987599796279462261];

% Layer 3
b3 = [-0.073602308533375557231;0.15714236357885438822;0.75162236236603274797;0.38503356993320231316;2.6841640780899465035;1.1204656818363796233;0.73286386029110084372;-1.5013382253765197305;0.751306826525171223;-1.1294264119893935305];
LW3_2 = [0.20063519585501612963 -0.36447928370728888137 0.49407330617515193838 -0.91811220933580561798 0.37087105704168543685 0.59127005918110842053 -2.9364358925343263529 2.4905206833524333732 -1.7760191356439172239 0.47760507602501955926;0.40980902802000057639 1.5875866670965361749 2.0032216183306856827 -2.041138054378106137 0.13344162870116854647 3.4706475772167224569 -1.9485953128523285649 1.783381561769005863 0.99329309632641782368 -1.848435478400302534;1.096549216995106546 -0.60052523096762167043 0.26326161792705554676 1.6806274679436630226 -2.242757130644611685 -0.27102409881641226219 0.40794034648794408326 0.57043128585213553894 1.7286810126625287154 -0.68045776527019119495;-0.15675202274476351949 2.396587620005885988 3.1407384690061124211 -0.33319745657332267008 -2.7675134538279926311 -0.22178798066767391184 -0.3903722028506237951 -0.1674190064683937218 1.3778762674763624929 -2.0229277688122944134;0.33062898282842012598 -5.0777855021203395225 2.7220680976144211449 -4.2993766626842147005 -3.2784438476175612465 -2.5281924926463612557 1.6849610186916030852 1.5646080370146495664 1.3898007786092612115 1.3330166572633959099;0.91763988467760626566 2.008781056934478837 -3.5927890032227516315 -2.2624548240621429329 0.086656188944984849365 -0.43823525589909689826 1.3043370420411075639 -0.72815267107431635996 0.596224754980134386 4.3630371243354160171;1.3338575504366312341 5.6287115230970492519 -6.2153141679558361332 -1.0602684920948275415 1.0752516799036531125 0.96768999025162605321 1.5371535840549597207 -2.7582072800931785039 0.43642982250610667938 5.921223107741121261;-0.87920671880468870274 -5.9072225843266119583 6.1505281818513148906 -1.6013858615781773054 -2.8466784190891587514 -2.6670695200552216875 -0.19364455462582366718 2.6474514040068157783 0.96138288454342624156 -3.9419087444334000025;0.070269790649646682312 2.5035369296102500947 1.2123700766454090783 0.90891071394718558896 0.13127059255016276795 0.1688658517586227592 1.8099121641655502302 -0.82681111879977986501 -0.76125830330863308859 -2.7374216098020545118;0.20257105994883023437 2.77224608614494894 -0.70166153633937378142 0.37533434804799081785 -0.43234839289724430467 0.428685052897218144 1.3405040959238629927 -1.472280486398252819 0.78978855893549715361 0.021817428986767941484];

% Layer 4
b4 = [-0.90095830756046979548;-1.470647526344463385];
LW4_3 = [-1.2419526595860077567 -2.6463278139271531053 -2.5934374464281511052 -0.14131683723246329931 5.5453008797610747749 -2.5160412912633618454 -0.86854910829581644105 -1.1758350000360211496 4.0836575273810824527 0.032823633803862439784;0.66758909590071868756 -0.42528174180256406167 -0.3891017851300160868 -1.7327234147074161985 0.44721187823698382857 -3.1126257962812489133 2.8733647472926966415 10.815174067077526487 -0.084743836788994900133 2.407722457340827571];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [5.81182305363272e-07;2.5950872403453e-07];
y1_step1.xoffset = [643.0023;0];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
  X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
  Q = size(X{1},2); % samples/series
else
  Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = logsig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = logsig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Layer 3
    a3 = logsig_apply(repmat(b3,1,Q) + LW3_2*a2);
    
    % Layer 4
    a4 = repmat(b4,1,Q) + LW4_3*a3;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a4,y1_step1);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(4,0);

% Format Output Arguments
if ~isCellX
  Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Positive Transfer Function
function a = logsig_apply(n,~)
  a = 1 ./ (1 + exp(-n));
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end
