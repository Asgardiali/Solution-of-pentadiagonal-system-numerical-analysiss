function [ts,ds,es,kalan]=calculate(t,d,e,b)

tsayi=0;
dsayi=0;
esayi=0;

% b=[91;67;55];
%Elektronik elemanların malzeme oranları
% t=[4 ;1 ;2];
% d=[3 ;3 ;3];
% e=[2 ;1 ;3];

for i=1:1:10000
    %Transistör elemanından başlayarak gelen malzemeye göre sırayla
    %hepsinden üretilecek şekilde ayarladım. Gelen malzeme sayısına göre
    %ilk olarak transistör ürettim 1 adet sonra direnç en son da entegre
    %ürettim. En sonda kalan malzemeleri bir sonraki hataya aktardım ve 
    %bunu her hafta yapması için algoritmayı sağladım.
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
%Fonksiyondan çıkan elemanları çıktı olarak gönderdim.
kalan=b;
ts=tsayi;
ds=dsayi;
es=esayi;
