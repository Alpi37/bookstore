using CatalogService from './catalog-service';

annotate CatalogService.Books with @(
    UI.LineItem: [
        { $Type: 'UI.DataField', Value: title, Label: 'Title' },
        { $Type: 'UI.DataField', Value: stock, Label: 'Stock' },
        { $Type: 'UI.DataField', Value: author.name, Label: 'Author' },
        { $Type: 'UI.DataField', Value: createdAt, Label: 'Created' }
    ]
);

annotate CatalogService.Authors with @(
    UI.LineItem: [
        { $Type: 'UI.DataField', Value: name, Label: 'Name'}
    ]
);