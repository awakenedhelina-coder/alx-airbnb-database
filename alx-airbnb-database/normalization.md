## Goal
Ensure the database is normalized up to Third Normal Form (3NF) to remove redundancy and ensure data integrity.

## Steps Taken

1. **User Table**
   - Already atomic; each attribute is single-valued.
   - No repeating groups or derived data.

2. **Property Table**
   - Owner_id references User.id → ensures referential integrity.
   - Price_per_night is atomic.

3. **Booking Table**
   - Splits booking information from user and property → no redundancy.
   - Total_price calculated but stored separately for performance.

4. **Payment Table**
   - Separate from Booking → avoids repeating payment information.
   - One-to-one relation ensures no duplicate payment entries.

## Result
- All tables are in 3NF.
- No partial or transitive dependencies.
- Data redundancy minimized.