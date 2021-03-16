function [ts,ds,es,kalan]=calculate(t,d,e,b)

tsayi=0;
dsayi=0;
esayi=0;

% b=[91;67;55];
%Elektronik elemanlar�n malzeme oranlar�
% t=[4 ;1 ;2];
% d=[3 ;3 ;3];
% e=[2 ;1 ;3];

for i=1:1:10000
    %Transist�r eleman�ndan ba�layarak gelen malzemeye g�re s�rayla
    %hepsinden �retilecek �ekilde ayarlad�m. Gelen malzeme say�s�na g�re
    %ilk olarak transist�r �rettim 1 adet sonra diren� en son da entegre
    %�rettim. En sonda kalan malzemeleri bir sonraki hataya aktard�m ve 
    %bunu her hafta yapmas� i�in algoritmay� sa�lad�m.
    if(b(1)-t(1)>0 || b(2)-t(2)>0 || b(3)-t(3)>0)
        byeni=b-t;  
        if(byeni(1)>0 && byeni(2)>0 && byeni(3)>0)
            b=byeni;
        else
            break;
        end
    end
    if(b(1)<2 || b(2)<1 || b(3)<2)
        break;
    else       
        tsayi=tsayi+1;
    end
    if(b(1)-d(1)>0 || b(2)-d(2)>0 || b(3)-d(3)>0)
        byeni=b-d ;
        if(byeni(1)>0 && byeni(2)>0 && byeni(3)>0)
            b=byeni;
        else
            break;
        end
    end
    if(b(1)<2 || b(2)<1 || b(3)<2)
        break;        
    else
        dsayi=dsayi+1;
    end
    if(b(1)-e(1)>0 || b(2)-e(2)>0 || b(3)-e(3)>0)
        byeni=b-e;
        if(byeni(1)>0 && byeni(2)>0 && byeni(3)>0)
            b=byeni;
        else
            break;
        end
    end
    if(b(1)<2 || b(2)<1 || b(3)<2)
        break;
    else
        esayi=esayi+1;
    end
    

end
%Fonksiyondan ��kan elemanlar� ��kt� olarak g�nderdim.
kalan=b;
ts=tsayi;
ds=dsayi;
es=esayi;
