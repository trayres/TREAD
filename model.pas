unit model;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, observer;

{Define the 'business objects' we want to view}
type

  { TSchematic }

  TSchematic = class(TSubject)
    //private

  public
    constructor Create; override;

  end;

  { TSymbol }

  TSymbol = class(TSubject) {also declared as TSubject, for the Symbol editor}
  private
    m_Pos: TPoint; {Object Location in World, in mm - use in terms of nm for PCB/IC layout}
  public
    constructor Create; override;
  public
    {Streaming}
    procedure SaveToFile(AFileName: string);
    procedure LoadFromFile(AFileName: string);
  end;

{TFootprint = class(TSubject)

end;}

{Symbol + Footprint = Part}
{TPart = class(TSubject)
end;}

implementation

{ TSchematic }

constructor TSchematic.Create;
begin
  inherited Create;
end;

constructor TSymbol.Create;
begin
  inherited Create;
end;

procedure TSymbol.SaveToFile(AFileName: string);
begin

end;

procedure TSymbol.LoadFromFile(AFileName: string);
begin

end;

end.

