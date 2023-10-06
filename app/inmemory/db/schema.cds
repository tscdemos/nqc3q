namespace filamentManagement;

entity Manufacturer {
  key ID: UUID;
  name: String(200);
}

entity MaterialType {
  key ID: UUID;
  typeName: String(200);
}

entity Color {
  key ID: UUID;
  colorName: String(200);
}

entity Spool {
  key ID: UUID;
  purchasePrice: Decimal(10,2);
  purchaseDate: Date;
  remainingAmount: Double;
  weight: Double;
  manufacturer: Association to Manufacturer;
  materialType: Association to MaterialType;
  color: Association to Color;
}

