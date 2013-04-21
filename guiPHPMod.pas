unit guiPHPMod;

{$ifdef fpc}
{$mode delphi}{$H+}
{$endif}

interface

uses
  Classes, SysUtils, Dialogs, Controls, Forms, Graphics, ComCtrls,
  Registry, StdCtrls, Buttons, ExtCtrls, Menus, TypInfo,

  {$ifdef fpc}
  LCLType,
  {$endif}

  zendTypes,
  ZENDAPI,
  phpTypes,
  PHPAPI,
  php4delphi,
  mainLCL,
  phpUtils,
  uPhpEvents,
  uForms,
  uPHPMod,

  SizeControl;

procedure InitializePHPMod(PHPEngine: TPHPEngine);

procedure random(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure component_create(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure cntr_parent(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure convert_file_to_bmp(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;


procedure bitmap_empty(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure component_index(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure component_name(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_helpkeyword(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_visible(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_x(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_y(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_w(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_h(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_hint(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_text(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure tabcontrol_indexofxy(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure control_invalidate(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure delay(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;


procedure pagecontrol_activepage(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure pagecontrol_pagecount(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure pagecontrol_pages(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;


procedure getabsolutex(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure getabsolutey(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

  
procedure scrollbox_vsshowing(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure scrollbox_hsshowing(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure scrollbox_sbsize(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;


procedure registry_create(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;

procedure registry_command(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;


procedure set_fatal_handler(ht: integer; return_value: pzval;
  return_value_ptr: pzval; this_ptr: pzval; return_value_used: integer;
  TSRMLS_DC: pointer); cdecl;


implementation

procedure random;
var
  p: pzval_array;
  i: integer;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_LONG(return_value, System.Random(Z_LVAL(p[0]^)));
  dispose_pzval_array(p);
end;

// component_create, depricated
procedure component_create;
var
  Obj, Owner: TComponent;
  p: TComponentClass;
  args: pzval_array;
begin
  if not isFetchParams(ht, 2, args, TSRMLS_DC) then exit;
  
  try
    if Z_LVAL(args[1]^) = -1 then
      Owner := Application
    else
      Owner := TComponent(Z_LVAL(args[1]^));

    p := TComponentClass(GetClass(Z_STRVAL(args[0]^)));
    if (p <> nil) then
    begin
      OBJ := TComponentClass(p).Create(Owner);
      ZVAL_OBJECT(return_value, OBJ);
    end else
      ZVAL_OBJECT(return_value, nil);

  except
    ZVAL_OBJECT(return_value, nil);
  end;
  dispose_pzval_array(args);
end;

procedure cntr_parent;
  var
  p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if p[1]^._type <> IS_NULL then
    TControl(Z_LVAL(p[0]^)).Parent := TControl(Z_LVAL(p[1]^)) as TWinControl
  else
    ZVAL_OBJECT(return_value, TControl(Z_LVAL(p[0]^)).Parent);

  dispose_pzval_array(p);
end;


procedure convert_file_to_bmp;
var
  p: TPicture;
  b: Graphics.TBitmap;
  args: pzval_array;
begin
  if not isFetchParams(ht, 2, args, TSRMLS_DC) then exit;

  P := TPicture.Create;
  b := Graphics.TBitmap(Z_LVAL(args[1]^));
  b.Transparent := True;
  try
    P.LoadFromFile(Z_STRVAL(args[0]^));
    b.Width := P.Graphic.Width;
    b.Height := P.Graphic.Height;
    b.Canvas.Draw(0, 0, P.Graphic);
  except
  end;
  FreeAndNil(P);
  dispose_pzval_array(args);
end;

procedure bitmap_empty;
  var
  p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_BOOL(return_value, not Graphics.TBitmap(Z_LVAL(p[0]^)).Empty);
  dispose_pzval_array(p);
end;

procedure component_index;
  var
  p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_LONG(return_value, TComponent(Z_LVAL(p[0]^)).ComponentIndex);
  dispose_pzval_array(p);
end;

procedure component_name;
  var
  p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_STRING(return_value, TComponent(Z_LVAL(p[0]^)).Name);
  dispose_pzval_array(p);
end;

procedure control_helpkeyword;
  var
  p: pzval_array;
  o: TObject;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;
  o := toObject(Z_LVAL(p[0]^));

  if o = nil then
  begin
    ZVAL_NULL(return_value);
    exit;
  end;

  if not (o is TControl) then
  begin
    ZVAL_NULL(return_value);
    exit;
  end;

  try
    if p[1]^._type = IS_NULL then
      ZVAL_STRING(return_value, TControl(o).HelpKeyword)
    else
      TControl(o).HelpKeyword := Z_STRVAL(p[1]^);
  except
  end;

  dispose_pzval_array(p);
end;

procedure control_visible;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if not (toObject(Z_LVAL(p[0]^)) is TControl) then
  begin  ZVAL_NULL(return_value); exit; end;

  if isNull(p[1]) then
    ZVAL_BOOL(return_value, toControl(Z_LVAL(p[0]^)).Visible)
  else
    toControl(Z_LVAL(p[0]^)).Visible := Z_BVAL(p[1]^);

  dispose_pzval_array(p);
end;

procedure control_x;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if not (toObject(Z_LVAL(p[0]^)) is TControl) then
  begin  ZVAL_NULL(return_value); exit; end;

  if isNull(p[1]) then
    ZVAL_LONG(return_value, toControl(Z_LVAL(p[0]^)).Left)
  else
    toControl(Z_LVAL(p[0]^)).Left := Z_LVAL(p[1]^);

  dispose_pzval_array(p);
end;

procedure control_y;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if not (toObject(Z_LVAL(p[0]^)) is TControl) then
  begin  ZVAL_NULL(return_value); exit; end;

  if isNull(p[1]) then
    ZVAL_LONG(return_value, toControl(Z_LVAL(p[0]^)).Top)
  else
    toControl(Z_LVAL(p[0]^)).Top := Z_LVAL(p[1]^);

  dispose_pzval_array(p);
end;

procedure control_w;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if not (toObject(Z_LVAL(p[0]^)) is TControl) then
  begin  ZVAL_NULL(return_value); exit; end;

  if isNull(p[1]) then
    ZVAL_LONG(return_value, toControl(Z_LVAL(p[0]^)).Width)
  else
    toControl(Z_LVAL(p[0]^)).Width := Z_LVAL(p[1]^);

  dispose_pzval_array(p);
end;

procedure control_h;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if not (toObject(Z_LVAL(p[0]^)) is TControl) then
  begin  ZVAL_NULL(return_value); exit; end;

  if isNull(p[1]) then
    ZVAL_LONG(return_value, toControl(Z_LVAL(p[0]^)).Height)
  else
    toControl(Z_LVAL(p[0]^)).Height := Z_LVAL(p[1]^);

  dispose_pzval_array(p);
end;

procedure control_hint;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if not (toObject(Z_LVAL(p[0]^)) is TControl) then
  begin  ZVAL_NULL(return_value); exit; end;

  if isNull(p[1]) then
    ZVAL_STRING(return_value, toControl(Z_LVAL(p[0]^)).Hint)
  else
    toControl(Z_LVAL(p[0]^)).Hint := Z_STRVAL(p[1]^);

  dispose_pzval_array(p);
end;

procedure control_text;
var p: pzval_array;
   o: TObject;
   v, ReturnValue: String;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  o := toObject(Z_LVAL(p[0]^));

  if o <> nil then
  if isNull(p[1]) then
  begin
    if o is TCustomEdit then
      ReturnValue := TCustomEdit(o).Text
    else if o is TListBox then
      ReturnValue := TListBox(o).Items.Text
    else if o is TComboBox then
      ReturnValue := TComboBox(o).Items.Text
    else if o is TSpeedButton then
      ReturnValue := TSpeedButton(o).Caption
    else if o is TButton then
      ReturnValue := TButton(o).Caption
    else if o is TCheckBox then
      ReturnValue := TCheckBox(o).Caption
    else if o is TRadioButton then
      ReturnValue := TRadioButton(o).Caption
    else if o is TGroupBox then
      ReturnValue := TGroupBox(o).Caption
    else if o is TRadioGroup then
      ReturnValue := TRadioGroup(o).Caption
    else if o is TPanel then
      ReturnValue := TPanel(o).Caption
    else if o is TLabel then
      ReturnValue := TLabel(o).Caption
    else if o is TMenuItem then
      ReturnValue := TMenuItem(o).Caption
    else if o is TListItem then
      ReturnValue := TListItem(o).Caption
    else
    if GetPropInfo(o, 'Caption') <> nil then
      ReturnValue := GetPropValue(o, 'Caption')
    else begin
        ZVAL_NULL(return_value);
        dispose_pzval_array(p);
        exit;
    end;

    ZVAL_STRING(return_value, ReturnValue);
  end else
  begin
        v := Z_STRVAL(p[1]^);
        
          if o is TCustomEdit then
            TCustomEdit(o).Text := v
          else if o is TListBox then
            TListBox(o).Items.Text := v
          else if o is TComboBox then
            TComboBox(o).Items.Text := v
          else if o is TSpeedButton then
            TSpeedButton(o).Caption := v
          else if o is TButton then
            TButton(o).Caption := v
          else if o is TCheckBox then
            TCheckBox(o).Caption := v
          else if o is TRadioButton then
            TRadioButton(o).Caption := v
          else if o is TGroupBox then
            TGroupBox(o).Caption := v
          else if o is TRadioGroup then
            TRadioGroup(o).Caption := v
          else if o is TPanel then
            TPanel(o).Caption := v
          else if o is TLabel then
            TLabel(o).Caption := v
          else if o is TMenuItem then
            TMenuItem(o).Caption := v
          else if o is TListItem then
            TListItem(o).Caption := v
          else
          if GetPropInfo(o, 'Caption') <> nil then
            SetPropValue(o, 'Caption', v);
  end;

  dispose_pzval_array(p);
end;

procedure tabcontrol_indexofxy;
var p: pzval_array;
begin
  if not isFetchParams(ht, 3, p, TSRMLS_DC) then exit;

  ZVAL_LONG(return_value,
     TTabControl(Z_LVAL(p[0]^)).IndexOfTabAt(Z_LVAL(p[1]^), Z_LVAL(p[2]^)));

  dispose_pzval_array(p);
end;

procedure control_invalidate;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  toControl(Z_LVAL(p[0]^)).Invalidate;
  dispose_pzval_array(p);
end;

procedure delay;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  Sleep(Z_LVAL(p[0]^));
  dispose_pzval_array(p);
end;

procedure pagecontrol_activepage;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;

  if isNull(p[1]) then
    ZVAL_LONG(return_value, toID(TPageControl(Z_LVAL(p[0]^)).ActivePage))
  else
    TPageControl(Z_LVAL(p[0]^)).ActivePage := TTabSheet(Z_LVAL(p[1]^));

  dispose_pzval_array(p);
end;

procedure pagecontrol_pagecount;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_LONG(return_value, TPageControl(Z_LVAL(p[0]^)).PageCount);
  dispose_pzval_array(p);
end;

procedure pagecontrol_pages;
var p: pzval_array;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;
  ZVAL_OBJECT(return_value, (TPageControl(Z_LVAL(p[0]^)).Pages[Z_LVAL(p[1]^)]));
  dispose_pzval_array(p);
end;


procedure getabsolutex;
var p: pzval_array;
  cntr, last: TControl;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;
  cntr := toControl(Z_LVAL(p[0]^));
  last := toControl(Z_LVAL(p[1]^));

  ZVAL_LONG(return_value, SizeControl.getAbsoluteX( cntr, last ));
  dispose_pzval_array(p);
end;

procedure getabsolutey;
var p: pzval_array;
  cntr, last: TControl;
begin
  if not isFetchParams(ht, 2, p, TSRMLS_DC) then exit;
  cntr := toControl(Z_LVAL(p[0]^));
  last := toControl(Z_LVAL(p[1]^));

  ZVAL_LONG(return_value, SizeControl.getAbsoluteY( cntr, last ));
  dispose_pzval_array(p);
end;

procedure registry_create;
var p: pzval_array;
begin
  ZVAL_OBJECT(return_value, TRegistry.Create);
end;

procedure registry_command;
var p: pzval_array;
  command: string;
  reg: TRegistry;
  value, opt, ReturnValue: Variant;

begin
  if not isFetchParams(ht, 4, p, TSRMLS_DC) then exit;

  reg := TRegistry(Z_LVAL(p[0]^));
  command := Z_STRVAL(p[1]^);
  value   := zval2variant(p[2]^^);
  opt     := zval2variant(p[3]^^);

  if (command = 'createkey') then
    ReturnValue := reg.CreateKey(value);

  if (command = 'closekey') then
    reg.CloseKey;

  if (command = 'deletekey') then
    ReturnValue := reg.DeleteKey(value);

  if (command = 'deletevalue') then
    ReturnValue := reg.DeleteValue(value);

  if (command = 'getdatasize') then
    ReturnValue := reg.GetDataSize(value);

  if (command = 'hassubkeys') then
    ReturnValue := reg.HasSubKeys();

  if (command = 'loadkey') then
    ReturnValue := reg.LoadKey(value, opt);

  if (command = 'keyexists') then
    ReturnValue := reg.KeyExists(value);

  if (command = 'openkey') then
    ReturnValue := reg.OpenKey(value, opt);

  if (command = 'openkeyreadonly') then
    ReturnValue := reg.OpenKeyReadOnly(value);

  if (command = 'readcurrency') then
    ReturnValue := reg.ReadCurrency(value);

  if (command = 'readbool') then
    ReturnValue := reg.ReadBool(value);

  if (command = 'readfloat') then
    ReturnValue := reg.ReadFloat(value);

  if (command = 'readdate') then
    ReturnValue := reg.ReadDateTime(value);

  if (command = 'readinteger') then
    ReturnValue := reg.ReadInteger(value);

  if (command = 'readstring') then
    ReturnValue := reg.ReadString(value);

  if (command = 'restorekey') then
    ReturnValue := reg.RestoreKey(value, opt);

  if (command = 'savekey') then
    ReturnValue := reg.SaveKey(value, opt);

  if (command = 'unloadkey') then
    ReturnValue := reg.UnLoadKey(value);

  if (command = 'valueexists') then
    ReturnValue := reg.ValueExists(value);

  if (command = 'currentkey') then
    ReturnValue := reg.CurrentKey;

  if (command = 'currentpath') then
    ReturnValue := reg.CurrentPath;

  if (command = 'rootkey') then
    reg.RootKey := value;

  if (command = 'access') then
    reg.Access := value;

  if (command = 'writebool') then
    reg.WriteBool(value, opt);

  if (command = 'writefloat') then
    reg.WriteFloat(value, opt);
  
  if (command = 'writestring') then
    reg.WriteString(value, opt);

  if (command = 'writeinteger') then
    reg.WriteInteger(value, opt);

  variant2zval(ReturnValue, return_value);
  dispose_pzval_array(p);
end;


procedure scrollbox_vsshowing;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_BOOL(return_value,
         TScrollBox(Z_LVAL(p[0]^)).VertScrollBar.IsScrollBarVisible);
  dispose_pzval_array(p);
end;

procedure scrollbox_hsshowing;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_BOOL(return_value,
         TScrollBox(Z_LVAL(p[0]^)).HorzScrollBar.IsScrollBarVisible);
  dispose_pzval_array(p);
end;

procedure scrollbox_sbsize;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  ZVAL_LONG(return_value,
         TScrollBox(Z_LVAL(p[0]^)).VertScrollBar.Size);
  dispose_pzval_array(p);
end;

procedure set_fatal_handler;
var p: pzval_array;
begin
  if not isFetchParams(ht, 1, p, TSRMLS_DC) then exit;
  phpMOD.fatal_handler_php := Z_STRVAL(p[0]^);
  dispose_pzval_array(p);
end;

procedure InitializePHPMod(PHPEngine: TPHPEngine);
begin
  PHPEngine.AddFunction('random', @random);
    PHPEngine.AddFunction('component_create', @component_create);
    PHPEngine.AddFunction('cntr_parent', @component_create);
    PHPEngine.AddFunction('convert_file_to_bmp', @convert_file_to_bmp);
    PHPEngine.AddFunction('bitmap_empty', @bitmap_empty);
    PHPEngine.AddFunction('component_index', @component_index);
    PHPEngine.AddFunction('component_name', @component_name);
    PHPEngine.AddFunction('control_helpkeyword', @control_helpkeyword);
    PHPEngine.AddFunction('control_visible', @control_visible);
    PHPEngine.AddFunction('control_x', @control_x);
    PHPEngine.AddFunction('control_y', @control_y);
    PHPEngine.AddFunction('control_w', @control_w);
    PHPEngine.AddFunction('control_h', @control_h);
    PHPEngine.AddFunction('control_hint', @control_hint);
    PHPEngine.AddFunction('control_text', @control_text);
    PHPEngine.AddFunction('tabcontrol_indexofxy', @tabcontrol_indexofxy);
    PHPEngine.AddFunction('control_invalidate', @control_invalidate);
  PHPEngine.AddFunction('delay', @delay);
    PHPEngine.AddFunction('pagecontrol_activepage', @pagecontrol_activepage);
    PHPEngine.AddFunction('pagecontrol_pagecount', @pagecontrol_pagecount);
    PHPEngine.AddFunction('pagecontrol_pages', @pagecontrol_pages);
    PHPEngine.AddFunction('getabsolutex', @getabsolutex);
    PHPEngine.AddFunction('getabsolutey', @getabsolutey);

    PHPEngine.AddFunction('registry_create', @registry_create);
    PHPEngine.AddFunction('registry_command', @registry_command);
    
    PHPEngine.AddFunction('scrollbox_vsshowing', @scrollbox_vsshowing);
    PHPEngine.AddFunction('scrollbox_hsshowing', @scrollbox_hsshowing);
    PHPEngine.AddFunction('scrollbox_sbsize', @scrollbox_sbsize);
    
  PHPEngine.AddFunction('set_fatal_handler', @set_fatal_handler);
    PHPEngine.AddFunction('component_index', @component_index);
    PHPEngine.AddFunction('component_index', @component_index);
    PHPEngine.AddFunction('component_index', @component_index);
    PHPEngine.AddFunction('component_index', @component_index);
end;




end.