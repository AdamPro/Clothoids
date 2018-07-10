addpath('../matlab');

%=========================================================================%
%                                                                         %
%  Autor: Enrico Bertolazzi                                               %
%         Department of Industrial Engineering                            %
%         University of Trento                                            %
%         enrico.bertolazzi@unitn.it                                      %
%                                                                         %
%=========================================================================%
% Driver test program to check Clothoids lib                              %
%=========================================================================%

close all ;

x0     = 0 ;
y0     = 0 ;
theta0 = 0*1.433674+pi;

S = ClothoidList() ;
S.push_back( x0, y0, theta0, 0, 0, 674.622545489527 ) ; % first segment

addseg  = @(a,r) S.push_back( -1/r, 0, abs(a*r) ) ;
addseg1 = @(l) S.push_back( 0, 0, l ) ;

addseg( 1.25173914202509, 17.8610071792628 ) ;
addseg1(35.6107679385915);
addseg(1.99174712980114,-14.8841726493856);
addseg1(10.3963730893385);
addseg(0.814036097116727,208.378417091399);
addseg(1.09773283953405,386.988488884027);
addseg1(29.6448594152893);
addseg(0.227622594762413,267.915107688942);
addseg1(363.788727708902);
addseg(1.40639594251655,-23.814676239017);
addseg1(12.7056386336101);
addseg(1.16209863282323,26.7915107688942);
addseg1(269.302184814126);
addseg(1.75790483433695,74.4208632469282);
addseg1(263.77076651529);
addseg(1.2522256904278,44.6525179481569);
addseg1(252.957797013381);
addseg(0.25536358203434,-416.756834182798);
addseg1(656.481195037487);
addseg(0.859676790769291,-53.5830215377883);
addseg1(80.2025397975864);
addseg(0.972934655414725,50.6061870079112);
addseg1(27.3613509317874);
addseg(0.886735480141838,-41.6756834182798);
addseg1(908.407080041319);
addseg(2.60409849830936,104.189208545699);
addseg(0.521829813434639,550.714388027269);
%addseg1(451.578651874315);
S.push_back_G1( x0, y0, theta0 ) ; 
S.plot() ;
axis equal