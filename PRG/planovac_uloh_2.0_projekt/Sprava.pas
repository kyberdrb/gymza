unit Sprava;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

  type
    //jedna sprava
    TSprava = class (TCustomListBox)
  private
    FPridajSpravu: String;
    FDatum: Integer;
    FPriorita: integer;
    FCheckmark: TCheckBox;
  public
    constructor Create;
    property PridajSpravu: string read FPridajSpravu write FPridajSpravu;
    property Datum: integer read FDatum write FDatum;
    property Priorita: integer read FPriorita write FPriorita;
    property CheckMark: TCheckBox read FCheckMark write FCheckMark;
    //property Checkmark: boolean read FCheckmark write SetCheckmark;
  end;

    //zoznam vsetkych sprav
    TZoznamUloh = class(TObject)

    end;

implementation

//doplnit vlastnosti
{$Region 'TSprava                                                              '}
constructor TSprava.Create;
begin

end;
{$EndRegion}



end.
