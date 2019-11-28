function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 28-Nov-2019 13:20:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function functionText_Callback(hObject, eventdata, handles)
% hObject    handle to functionText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functionText as text
%        str2double(get(hObject,'String')) returns contents of functionText as a double


% --- Executes during object creation, after setting all properties.
function functionText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xLower_Callback(hObject, eventdata, handles)
% hObject    handle to xLower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xLower as text
%        str2double(get(hObject,'String')) returns contents of xLower as a double


% --- Executes during object creation, after setting all properties.
function xLower_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xLower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xUpper_Callback(hObject, eventdata, handles)
% hObject    handle to xUpper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xUpper as text
%        str2double(get(hObject,'String')) returns contents of xUpper as a double


% --- Executes during object creation, after setting all properties.
function xUpper_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xUpper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in methodMenu.
function methodMenu_Callback(hObject, eventdata, handles)

popChoice = get(handles.methodMenu ,'Value');
switch popChoice
    case 1
        set(handles.xLower ,'Visible','On')
        set(handles.xUpper ,'Visible','On')

    case 2
         set(handles.xLower ,'Visible','On')
         set(handles.xUpper ,'Visible','On')
    case 3
         set(handles.xLower ,'Visible','On')
         set(handles.xUpper ,'Visible','Off')
    case 4
          set(handles.xLower ,'Visible','On')
          set(handles.xUpper ,'Visible','Off')
    case 5
          set(handles.xLower ,'Visible','On')
          set(handles.xUpper ,'Visible','On')
end

% hObject    handle to methodMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns methodMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from methodMenu


% --- Executes during object creation, after setting all properties.
function methodMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to methodMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function tolerance_Callback(hObject, eventdata, handles)
% hObject    handle to tolerance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tolerance as text
%        str2double(get(hObject,'String')) returns contents of tolerance as a double


% --- Executes during object creation, after setting all properties.
function tolerance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tolerance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iterations_Callback(hObject, eventdata, handles)
% hObject    handle to iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iterations as text
%        str2double(get(hObject,'String')) returns contents of iterations as a double


% --- Executes during object creation, after setting all properties.
function iterations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --------------------------------------------------------------------
function bisection_Callback(hObject, eventdata, handles)
% hObject    handle to bisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

func =  get(handles.functionText,'String');
xu=str2double(get(handles.xUpper,'String'));
xl=str2double(get(handles.xLower,'String'));
tol=get(handles.tolerance,'String');
iter=get(handles.iterations,'String');
if(isempty(iter))
     iter = 50;
else
    iter=str2double(iter);
end
if(isempty(tol))
    tol = 0.00001;
else
    tol=str2double(tol);
end

switch get(handles.methodMenu,'Value')
    
    case 1
       [iterations,xr]= bisection(func,xu,xl,tol,iter);
       printBracketing(iterations,xr,handles);
    case 2
       [iterations,root]= falsePosition(func,xu,xl,tol,iter); 
       printBracketing(iterations,root,handles);
    case 3
       [iterations,xc,err] = fixedPoint( func, xl, tol, iter);
        printFixed(iterations,xc,handles);
    case 4
        newton( func, xl, tol, iter);
    case 5
        secant(func, xl, xu, tol, iter);
end
set(handles.functionText ,'enable','On');




% --- Executes on button press in file.
function file_Callback(hObject, eventdata, handles)
[file,path] = uigetfile('*.txt');

if isequal(file,0)
   disp('User selected Cancel');
else
    disp(['User selected ', fullfile(path,file)]);
    fid = fopen(fullfile(path,file));
    data = textscan(fid,'%s');
    fclose(fid);
    celldisp(data);
    f=data{1}{1};
    display(f);  
    set(handles.functionText,'string',f);
    set(handles.functionText ,'enable','Off')
 
end


function printBracketing(iterations,xc,handles)
f = figure;

t = uitable('ColumnName', {'i','xl', 'f(xl)', 'xu', 'f(xu)','xr','f(xr)','ea','time'});
drawnow;

set(t,'Position',[20 20 500 300]);
set(t, 'Data', iterations);
       
function printFixed(iterations,xc,handles)
f = figure;

t = uitable('ColumnName', {'i','x0', 'x1', 'ea', 'time'});
drawnow;

set(t,'Position',[20 20 500 300]);
set(t, 'Data', iterations);










