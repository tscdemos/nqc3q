using { filamentManagementSrv } from '../srv/service.cds';

annotate filamentManagementSrv.Manufacturer with @odata.draft.enabled;
annotate filamentManagementSrv.MaterialType with @odata.draft.enabled;
annotate filamentManagementSrv.Color with @odata.draft.enabled;
annotate filamentManagementSrv.Spool with @odata.draft.enabled;
annotate filamentManagementSrv.Manufacturer with @cds.odata.valuelist;
annotate filamentManagementSrv.MaterialType with @cds.odata.valuelist;
annotate filamentManagementSrv.Color with @cds.odata.valuelist;
annotate filamentManagementSrv.Manufacturer with @UI.HeaderInfo: { TypeName: 'Manufacturer', TypeNamePlural: 'Manufacturers', Title: { Value: name } };
annotate filamentManagementSrv.Manufacturer with {
  ID @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate filamentManagementSrv.Manufacturer with @UI.Identification: [{ Value: name }];
annotate filamentManagementSrv.Manufacturer with {
  name @title: 'Name'
};

annotate filamentManagementSrv.Manufacturer with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: name }
];

annotate filamentManagementSrv.Manufacturer with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: name }
  ]
};

annotate filamentManagementSrv.Manufacturer with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate filamentManagementSrv.MaterialType with @UI.HeaderInfo: { TypeName: 'Material Type', TypeNamePlural: 'Material Types', Title: { Value: typeName } };
annotate filamentManagementSrv.MaterialType with {
  ID @Common.Text: { $value: typeName, ![@UI.TextArrangement]: #TextOnly }
};
annotate filamentManagementSrv.MaterialType with @UI.Identification: [{ Value: typeName }];
annotate filamentManagementSrv.MaterialType with {
  typeName @title: 'Type Name'
};

annotate filamentManagementSrv.MaterialType with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: typeName }
];

annotate filamentManagementSrv.MaterialType with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: typeName }
  ]
};

annotate filamentManagementSrv.MaterialType with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate filamentManagementSrv.Color with @UI.HeaderInfo: { TypeName: 'Color', TypeNamePlural: 'Colors', Title: { Value: colorName } };
annotate filamentManagementSrv.Color with {
  ID @Common.Text: { $value: colorName, ![@UI.TextArrangement]: #TextOnly }
};
annotate filamentManagementSrv.Color with @UI.Identification: [{ Value: colorName }];
annotate filamentManagementSrv.Color with {
  colorName @title: 'Color Name'
};

annotate filamentManagementSrv.Color with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: colorName }
];

annotate filamentManagementSrv.Color with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: colorName }
  ]
};

annotate filamentManagementSrv.Color with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate filamentManagementSrv.Spool with @UI.HeaderInfo: { TypeName: 'Spool', TypeNamePlural: 'Spools', Title: { Value: purchaseDate } };
annotate filamentManagementSrv.Spool with {
  ID @Common.Text: { $value: purchaseDate, ![@UI.TextArrangement]: #TextOnly }
};
annotate filamentManagementSrv.Spool with @UI.Identification: [{ Value: purchaseDate }];
annotate filamentManagementSrv.Spool with {
  purchasePrice @title: 'Purchase Price';
  purchaseDate @title: 'Purchase Date';
  remainingAmount @title: 'Remaining Amount';
  weight @title: 'Weight'
};

annotate filamentManagementSrv.Spool with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: purchasePrice },
    { $Type: 'UI.DataField', Value: purchaseDate },
    { $Type: 'UI.DataField', Value: remainingAmount },
    { $Type: 'UI.DataField', Value: weight },
    { $Type: 'UI.DataField', Label: 'Manufacturer', Value: manufacturer_ID },
    { $Type: 'UI.DataField', Label: 'Material Type', Value: materialType_ID },
    { $Type: 'UI.DataField', Label: 'Color', Value: color_ID }
];

annotate filamentManagementSrv.Spool with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: purchasePrice },
    { $Type: 'UI.DataField', Value: purchaseDate },
    { $Type: 'UI.DataField', Value: remainingAmount },
    { $Type: 'UI.DataField', Value: weight },
    { $Type: 'UI.DataField', Label: 'Manufacturer', Value: manufacturer_ID },
    { $Type: 'UI.DataField', Label: 'Material Type', Value: materialType_ID },
    { $Type: 'UI.DataField', Label: 'Color', Value: color_ID }
  ]
};

annotate filamentManagementSrv.Spool with {
  manufacturer @Common.Text: { $value: manufacturer.name, ![@UI.TextArrangement]: #TextOnly };
  materialType @Common.Text: { $value: materialType.typeName, ![@UI.TextArrangement]: #TextOnly };
  color @Common.Text: { $value: color.colorName, ![@UI.TextArrangement]: #TextOnly }
};

annotate filamentManagementSrv.Spool with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

