USER {
    int user_id PK
    varchar first_name
    varchar last_name
    varchar email UNIQUE
    varchar phone
    enum role  "guest|host|both"
    timestamp created_at
  }

  PROPERTY {
    int property_id PK
    int host_id FK  "→ USER.user_id"
    varchar title
    text description
    varchar address_line1
    varchar address_line2
    varchar city
    varchar state
    varchar country
    varchar postal_code
    decimal price_per_night
    timestamp created_at
  }

  BOOKING {
    int booking_id PK
    int property_id FK "→ PROPERTY.property_id"
    int guest_id FK    "→ USER.user_id"
    date start_date
    date end_date
    enum status "pending|confirmed|cancelled|completed"
    timestamp created_at
  }

  PAYMENT {
    int payment_id PK
    int booking_id FK "→ BOOKING.booking_id"
    decimal amount
    varchar method "card|wallet|bank_transfer"
    enum status "initiated|paid|refunded|failed"
    timestamp paid_at
  }

  REVIEW {
    int review_id PK
    int booking_id FK     "→ BOOKING.booking_id"
    int author_user_id FK "→ USER.user_id"
    smallint rating "1..5"
    text comment
    timestamp created_at
  }

  AMENITY {
    int amenity_id PK
    varchar name UNIQUE
  }

Relationships  
A User can be a host, a guest, or both.
A Host (User) can own many Properties.
A Guest (User) can make many Bookings.
Each Booking belongs to exactly one Property and one Guest.
Each Booking has one Payment.
A Booking can receive multiple Reviews.
Properties and Amenities have a many-to-many relationship via Property_Amenity.