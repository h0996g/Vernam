clear all;
clc ;

%array containing the lowercase alphabet.
%alphabet={'a' ,'b' , 'c', 'd' , 'e', 'f' , 'g' ,'h' , 'i' ,'j' 'k' , 'l' ,'m' ,'n' ,'o' ,'p' ,'q','r','s', 't' ,'u','v' ,'w' ,'x' ,'y' ,'z'};
%alphabet = 'abcdefghijklmnopqrstuvwxyz';

plain_text=input('enter the plain text','s');


key=input('enter the key','s');



 if length(key) < length(plain_text)
    key=input('entrer une clé qui a la meme logueur que le plain texte','s');

 else
     new_key = key(1:length(plain_text));
 end
 
 
 
%  convertion to ASCII
%convert the plain text and the key from characters to their binary representations
bin_pt=dec2bin(plain_text);
bin_key=dec2bin(new_key);

disp (bin_pt);
disp('le code binare du key');
disp(bin_key);


% XOR entre le plain text et la clef
 cypher_text= bitxor(double(bin_pt),double(bin_key));
 disp('the cypher text is');
 disp(cypher_text);
 
 %convet to a string
 R=num2str(cypher_text);
 disp(R);
 

    
 
 rf=bin2dec(R);
 disp(rf);

 
 charr=char(rf+'A'-1)
 disp(charr)