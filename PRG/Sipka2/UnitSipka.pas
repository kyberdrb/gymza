unit UnitSipka;

interface

uses
  Classes, Vcl.Controls, Vcl.Graphics;

type
  TDruhTvaru = (tvSipkaDole, tvSipkaHore, tvSipkaDolava, tvSipkaDoprava);

  TSipka = class(TGraphicControl)
  private
    FPen: TPen;
    FBrush: TBrush;
    FDruhTvaru: TDruhTvaru;
    procedure SetBrush(Value: TBrush);
    procedure SetPen(Value: TPen);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Canvas;
  published
    property Brush: TBrush read FBrush write SetBrush;
    property Pen: TPen read FPen write SetPen;
    property DruhTvaru: TDruhTvaru read FDruhTvaru write FDruhTvaru;
  end;

  procedure Register;

implementation
uses
  Types;

constructor TSipka.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
  FPen := TPen.Create;
  FBrush := TBrush.Create;
  Pen.Width := 1;
  Pen.Color := clBlack;
  FDruhTvaru := tvSipkaDoprava;
  Invalidate;
end;

destructor TSipka.Destroy;
begin
  FPen.Free;
  FBrush.Free;
  inherited Destroy;
end;

procedure TSipka.SetBrush(Value: TBrush);
begin
  FBrush.Assign(Value);
  Invalidate;
end;

procedure TSipka.SetPen(Value: TPen);
begin
  FPen.Assign(Value);
  Invalidate;
end;

procedure TSipka.Paint;
var
  P1, P2, P3, P4, P5, P6, P7: TPoint;
begin
  case FDruhTvaru of

  tvSipkaDoprava:
  with Canvas do
    begin
      Pen := FPen;
      Brush := FBrush;
      P1 :=Point(Pen.Width div 2, height div 4);
      P2 :=Point(width*3 div 4, P1.Y);
      P3 :=Point(P2.X, P1.X);
      P4 :=Point(width - Pen.Width, height div 2);
      P5 :=Point(P2.X, height - P1.X);
      P6 :=Point(P2.X, height*3 div 4);
      P7 :=Point(P1.X, P6.Y);
      Polygon([P1, P2, P3, P4, P5, P6, P7]);
    end;

    tvSipkaDolava:
    with Canvas do
    begin
      Pen := FPen;
      Brush := FBrush;
      P1 :=Point(Pen.Width div 2, Height div 2);
      P2 :=Point(Width div 4, P1.X);
      P3 :=Point(P2.X, Height div 4);
      P4 :=Point(width - Pen.Width, P3.Y);
      P5 :=Point(P4.X, height*3 div 4);
      P6 :=Point(P2.X, P5.Y);
      P7 :=Point(P2.X, Height - P1.X);
      Polygon([P1, P2, P3, P4, P5, P6, P7]);
    end;

    tvSipkaHore:
    with Canvas do
    begin
      Pen := FPen;
      Brush := FBrush;
      P1 :=Point(width div 4, height - pen.width);
      P2 :=Point(width div 4, height div 4);
      P3 :=Point(pen.width div 2, height div 4);
      P4 :=Point(width div 2, pen.width);
      P5 :=Point(width - pen.width div 2, height div 4);
      P6 :=Point(width*3 div 4, height div 4);
      P7 :=Point(width*3 div 4, height - pen.width);
      Polygon([P1, P2, P3, P4, P5, P6, P7]);
    end;

    tvSipkaDole:
    with Canvas do
    begin
      Pen := FPen;
      Brush := FBrush;
      P1 :=Point(width*3 div 4, pen.width);
      P2 :=Point(width*3 div 4, height*3 div 4);
      P3 :=Point(width  - pen.width div 2, height*3 div 4);
      P4 :=Point(width div 2,height - pen.width);
      P5 :=Point(pen.width div 2, height*3 div 4);
      P6 :=Point(width div 4, height*3 div 4);
      P7 :=Point(width div 4, pen.width);
      Polygon([P1, P2, P3, P4, P5, P6, P7]);
    end;
  end;
end;

procedure Register;
begin
  RegisterComponents('Pokus', [TSipka]);
end;

end.
