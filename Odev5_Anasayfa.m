function varargout = Odev5_Anasayfa(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Odev5_Anasayfa_OpeningFcn, ...
                   'gui_OutputFcn',  @Odev5_Anasayfa_OutputFcn, ...
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

function Odev5_Anasayfa_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = Odev5_Anasayfa_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function Hw1_Callback(hObject, eventdata, handles)

PentadiagonalSistem;

function Hw2_Callback(hObject, eventdata, handles)

 ElektronikMalzemeHesaplama;