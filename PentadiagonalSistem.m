function varargout = PentadiagonalSistem(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PentadiagonalSistem_OpeningFcn, ...
                   'gui_OutputFcn',  @PentadiagonalSistem_OutputFcn, ...
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

function PentadiagonalSistem_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = PentadiagonalSistem_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

resim=imread('sistem.jpg');
imshow(resim);



function a_Callback(hObject, eventdata, handles)

function a_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function b_Callback(hObject, eventdata, handles)

function b_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function c_Callback(hObject, eventdata, handles)

function c_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function d_Callback(hObject, eventdata, handles)

function d_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function e_Callback(hObject, eventdata, handles)

function e_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)

a=str2double(get(handles.a,'string'));
b=str2double(get(handles.b,'string'));
c=str2double(get(handles.c,'string'));
dValue=str2double(get(handles.d,'string'));
eValue=str2double(get(handles.e,'string'));

A=[a -2 -1 0 0;-2 b -4 -1 0;-1 -3 c -1 -2;0 -4 -2 dValue -5;0 0 -7 -3 eValue];
b=[5;2;0;1;5];

f=diag(A);
h=diag(A,1);
g=diag(A,2);
e=[0;diag(A,-1)];
d=[0;0;diag(A,-2)];

x=LUPentadiagSolve(d,e,f,g,h,b,A);

data=[];

for k=1:1:max(size(A))
    
    data(k,1)=k;
    data(k,2)=x(k);
    
end

set(handles.dataTable,'data',data);
