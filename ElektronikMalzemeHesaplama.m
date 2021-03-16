function varargout = ElektronikMalzemeHesaplama(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ElektronikMalzemeHesaplama_OpeningFcn, ...
                   'gui_OutputFcn',  @ElektronikMalzemeHesaplama_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function ElektronikMalzemeHesaplama_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = ElektronikMalzemeHesaplama_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

global kalan t d e data;

function bakir1_Callback(hObject, eventdata, handles)

function bakir1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cinko1_Callback(hObject, eventdata, handles)

function cinko1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function demir1_Callback(hObject, eventdata, handles)

function demir1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function bakir2_Callback(hObject, eventdata, handles)

function bakir2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cinko2_Callback(hObject, eventdata, handles)

function cinko2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function demir2_Callback(hObject, eventdata, handles)

function demir2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function bakir3_Callback(hObject, eventdata, handles)

function bakir3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cinko3_Callback(hObject, eventdata, handles)

function cinko3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function demir3_Callback(hObject, eventdata, handles)

function demir3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function bakir4_Callback(hObject, eventdata, handles)

function bakir4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function cinko4_Callback(hObject, eventdata, handles)

function cinko4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function demir4_Callback(hObject, eventdata, handles)

function demir4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function calculate_Callback(hObject, eventdata, handles)

set(handles.title2,'visible','on');set(handles.title3,'visible','on');
set(handles.title4,'visible','on');set(handles.title5,'visible','on');
set(handles.bakir1,'visible','on');set(handles.cinko1,'visible','on');
set(handles.demir1,'visible','on');set(handles.calculate1,'visible','on');
set(handles.dataTable,'visible','on');

f=msgbox('Bir hafta için maksimum 10000 adet malzeme girilebilir!!!');

function calculate1_Callback(hObject, eventdata, handles)
global kalan t d e data;
set(handles.title6,'visible','on');set(handles.title7,'visible','on');
set(handles.title8,'visible','on');set(handles.title9,'visible','on');
set(handles.bakir2,'visible','on');set(handles.cinko2,'visible','on');
set(handles.demir2,'visible','on');set(handles.calculate2,'visible','on');

b1=str2double(get(handles.bakir1,'string'));
c1=str2double(get(handles.cinko1,'string'));
d1=str2double(get(handles.demir1,'string'));

b=[b1;c1;d1];
t=[4 ;1 ;2];
d=[3 ;3 ;3];
e=[2 ;1 ;3];

[ts,ds,es,kalan]=calculate(t,d,e,b);

data=[];
data(1,1)=1;
data(1,2)=ts;
data(1,3)=ds;
data(1,4)=es;

set(handles.dataTable,'data',data);

function calculate2_Callback(hObject, eventdata, handles)
global kalan t d e data;
set(handles.title10,'visible','on');set(handles.title11,'visible','on');
set(handles.title12,'visible','on');set(handles.title13,'visible','on');
set(handles.bakir3,'visible','on');set(handles.cinko3,'visible','on');
set(handles.demir3,'visible','on');set(handles.calculate3,'visible','on');

b2=str2double(get(handles.bakir2,'string'));
c2=str2double(get(handles.cinko2,'string'));
d2=str2double(get(handles.demir2,'string'));

b=[b2;c2;d2];
b=kalan+b;
[ts,ds,es,kalan]=calculate(t,d,e,b);

data(2,1)=2;
data(2,2)=ts;
data(2,3)=ds;
data(2,4)=es;

set(handles.dataTable,'data',data);




function calculate3_Callback(hObject, eventdata, handles)
global kalan t d e data;
set(handles.title14,'visible','on');set(handles.title15,'visible','on');
set(handles.title16,'visible','on');set(handles.title17,'visible','on');
set(handles.bakir4,'visible','on');set(handles.cinko4,'visible','on');
set(handles.demir4,'visible','on');set(handles.calculate4,'visible','on');

b3=str2double(get(handles.bakir3,'string'));
c3=str2double(get(handles.cinko3,'string'));
d3=str2double(get(handles.demir3,'string'));

b=[b3;c3;d3];
b=kalan+b;
[ts,ds,es,kalan]=calculate(t,d,e,b);

data(3,1)=3;
data(3,2)=ts;
data(3,3)=ds;
data(3,4)=es;

set(handles.dataTable,'data',data);

function calculate4_Callback(hObject, eventdata, handles)
global kalan t d e data;
b4=str2double(get(handles.bakir4,'string'));
c4=str2double(get(handles.cinko4,'string'));
d4=str2double(get(handles.demir4,'string'));

b=[b4;c4;d4];
b=kalan+b;
[ts,ds,es,kalan]=calculate(t,d,e,b);

data(4,1)=4;
data(4,2)=ts;
data(4,3)=ds;
data(4,4)=es;

set(handles.dataTable,'data',data);
