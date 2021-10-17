function varargout = newEntry(varargin)
% NEWENTRY MATLAB code for newEntry.fig
%      NEWENTRY, by itself, creates a new NEWENTRY or raises the existing
%      singleton*.
%
%      H = NEWENTRY returns the handle to a new NEWENTRY or the handle to
%      the existing singleton*.
%a
%      NEWENTRY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWENTRY.M with the given input arguments.
%
%      NEWENTRY('Property','Value',...) creates a new NEWENTRY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newEntry_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newEntry_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newEntry

% Last Modified by GUIDE v2.5 05-May-2017 17:37:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newEntry_OpeningFcn, ...
                   'gui_OutputFcn',  @newEntry_OutputFcn, ...
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


% --- Executes just before newEntry is made visible.
function newEntry_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newEntry (see VARARGIN)

% Choose default command line output for newEntry
handles.output = hObject;
global rnkNo;
rnkNo=0;
axes(handles.axes1);
guidata(hObject, handles);
cla(handles.axes1);
cla(handles.axes2);
global stPhotoNo;
stPhotoNo=0;
% UIWAIT makes newEntry wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newEntry_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global rnkNo;
rnkNo=0;


function mysqlUsername_Callback(hObject, eventdata, handles)
% hObject    handle to mysqlUsername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mysqlUsername as text
%        str2double(get(hObject,'String')) returns contents of mysqlUsername as a double


% --- Executes during object creation, after setting all properties.
function mysqlUsername_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mysqlUsername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mysqlPassword_Callback(hObject, eventdata, handles)
% hObject    handle to mysqlPassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mysqlPassword as text
%        str2double(get(hObject,'String')) returns contents of mysqlPassword as a double


% --- Executes during object creation, after setting all properties.
function mysqlPassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mysqlPassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in connectDatabaseButton.
function connectDatabaseButton_Callback(hObject, eventdata, handles)
% hObject    handle to connectDatabaseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dbname = 'attendance_login';
username = get(handles.mysqlUsername, 'String');
password = get(handles.mysqlPassword, 'String');
%driver = 'mysql-connector-java-5.1.41\mysql-connector-java-5.1.41\mysql-connector-java-5.1.41-bin.jar';
driver = 'com.mysql.jdbc.Driver';
dburl = ['jdbc:mysql://localhost:3306/' dbname];
javaclasspath('mysql-connector-java-5.1.42\mysql-connector-java-5.1.41\mysql-connector-java-5.1.42-bin.jar');
global conn;
conn = database(dbname, username, password, driver, dburl);
set(handles.statusText, 'String', 'Database connected');


function cameraCode_Callback(hObject, eventdata, handles)
% hObject    handle to cameraCode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cameraCode as text
%        str2double(get(hObject,'String')) returns contents of cameraCode as a double


% --- Executes during object creation, after setting all properties.
function cameraCode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cameraCode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startCamera.
function startCamera_Callback(hObject, eventdata, handles)
% hObject    handle to startCamera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.statusText, 'String', '...');
axes(handles.axes1);
global vid;
vid = videoinput('winvideo', 1, get(handles.cameraCode, 'String'));
vid.FramesPerTrigger = 1;
hImage=image(zeros(480,480,3),'Parent',handles.axes1);
preview(vid,hImage);
start(vid);
guidata(hObject, handles);

% --- Executes on button press in takeSnap.
function takeSnap_Callback(hObject, eventdata, handles)
% hObject    handle to takeSnap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid;
global stPhotoNo;
vid.ReturnedColorSpace = 'gray';
studentPhoto=getsnapshot(vid);
imshow(studentPhoto);
stPhotoNo=stPhotoNo+1;
imwrite(studentPhoto,strcat('database\Current photos\snapPhoto',num2str(stPhotoNo),'.png'));
set(handles.statusText, 'String', 'Photo collected. Press take snap or select photos to add again.');

% --- Executes on button press in takeFingerprint.
function takeFingerprint_Callback(hObject, eventdata, handles)
% hObject    handle to takeFingerprint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.statusText, 'String', '...');
global fingerPrintImage;
[filename, pathname]=uigetfile({'*.tif';'*.png';'*.jpg';'*.fig';'*.*'},'Image Files(*.png,*.jpg,*.fig,*.tif,*.*)');
fingerPrintFile='';
fingerPrintFile=strcat(pathname,filename);
fingerPrintImage=imread(fingerPrintFile);
global finImg;
axes(handles.axes2);
finImg=image(fingerPrintImage);
set(handles.statusText, 'String', 'Fingerprint collected');

% --- Executes on button press in entryStudent.
function entryStudent_Callback(hObject, eventdata, handles)
% hObject    handle to entryStudent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fingerPrintImage;
global conn;
global rnkNo;
pathName1='';
pathName2='';
faceDatabase=imageSet('database\Current photos\')
m=matfile('rnkNo.mat','Writable',true);
pathAd='';
if (or(isequal(get(handles.studentID, 'String'),''),isequal(get(handles.studentName, 'String'),'')))
    set(handles.statusText, 'String', 'Please fill all the information');
else    
    if m.x==0
        m.x=1;
        pathAd=strcat('database\Student photo\','s',num2str(m.x),'\');
        mkdir(pathAd);
        for i=1:faceDatabase.Count
            a=read(faceDatabase(1),i);
            a=imresize(a,[92,112]);
            imwrite(a,strcat(pathAd,'pic',num2str(i),'.pgm'));
        end
        stdFingerPrint=strcat('stdFingerPrint',num2str(m.x));
        pathName2=strcat('database\Student fingerprint\',stdFingerPrint,'.tif');        
    else
        m.x=m.x+1;
        pathAd=strcat('database\Student photo\','s',num2str(m.x),'\');
        mkdir(pathAd);
        for i=1:faceDatabase.Count
            a=read(faceDatabase(1),i);
            a=imresize(a,[92,112]);
            imwrite(a,strcat(pathAd,'pic',num2str(i),'.pgm'))
        end
        stdFingerPrint=strcat('stdFingerPrint',num2str(m.x));
        pathName2=strcat('database\Student fingerprint\',stdFingerPrint,'.tif');
    end
    imwrite(fingerPrintImage,pathName2);
    delete('database\Current photos\*.*'); 
    colnames= {'serial','id', 'name', 'photo_file', 'fingerprint_file','attendance'};
    data = {m.x,get(handles.studentID, 'String'),get(handles.studentName, 'String'), pathAd, pathName2,0};
    datainsert(conn, 'student_info', colnames, data);
    set(handles.statusText, 'String', 'Student Added-Press clear to add again');       
end
% --- Executes on button press in clearAllData.
function clearAllData_Callback(hObject, eventdata, handles)
% hObject    handle to clearAllData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.studentID, 'String', '');
set(handles.studentName, 'String', '');
global stPhotoNo
stPhotoNo=0;
cla(handles.axes1);
cla(handles.axes2);


function studentName_Callback(hObject, eventdata, handles)
% hObject    handle to studentName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of studentName as text
%        str2double(get(hObject,'String')) returns contents of studentName as a double


% --- Executes during object creation, after setting all properties.
function studentName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to studentName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function studentID_Callback(hObject, eventdata, handles)
% hObject    handle to studentID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of studentID as text
%        str2double(get(hObject,'String')) returns contents of studentID as a double


% --- Executes during object creation, after setting all properties.
function studentID_CreateFcn(hObject, eventdata, handles)
% hObject    handle to studentID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in selectPhotos.
function selectPhotos_Callback(hObject, eventdata, handles)
% hObject    handle to selectPhotos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.statusText, 'String', '....');
[filename, pathname]=uigetfile({'*.*';'*.png';'*.tif';'*.jpg';'*.pgm'},'File Selector');
pic=imread(strcat(pathname,filename));
global stPhotoNo
stPhotoNo=stPhotoNo+1;
axes(handles.axes1);
imshow(pic);
imwrite(pic,strcat('database\Current photos\snapPhoto',num2str(stPhotoNo),'.png'));
set(handles.statusText, 'String', 'Photo collected. Press take snap or select photos to add again.');
