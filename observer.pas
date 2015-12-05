unit observer;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  {forward declarations}
  TSubject = class;

  TObserver = class(TObject)
    public
      {The method that notifies us that ASubject has changed}
      procedure Update(ASubject : TSubject); virtual; abstract;
  end;

  { TSubject }

  TSubject = class(TObject)
  private
    FObserverList: TList;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    procedure AttachObserver(AObserver: TObserver); virtual;
    procedure DetachObserver(AObserver: TObserver); virtual;
    procedure NotifyObservers; virtual;
  end;

implementation

constructor TSubject.Create;
begin
  inherited Create;
  FObserverList := TList.Create;
end;

destructor TSubject.Destroy;
begin
  inherited Destroy;
end;

procedure TSubject.AttachObserver(AObserver: TObserver);
begin

end;

procedure TSubject.DetachObserver(AObserver: TObserver);
begin

end;

procedure TSubject.NotifyObservers;
var
i: Integer;
lObserver : TObserver;
begin
  if not Assigned(FObserverList) then
    Exit;
  for i := 0 to FObserverList.Count-1 do
  begin
    lObserver := TObserver(FObserverList.Items[i]);
    if Assigned(lObserver) then
      lObserver.Update(self);
  end;
end;

end.

