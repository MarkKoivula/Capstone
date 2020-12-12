-- Table: public.Census_State

-- DROP TABLE public."Census_State";

CREATE TABLE public."Census_State"
(
    "People" character varying(200) COLLATE pg_catalog."default",
    "Alaska" numeric(10,1),
    "Georgia" numeric(10,1),
    "Hawaii" numeric(10,1),
    "Idaho" numeric(10,1),
    "Illinois" numeric(10,1),
    "Indiana" numeric(10,1),
    "Iowa" numeric(10,1),
    "Kansas" numeric(10,1),
    "Kentucky" numeric(10,1),
    "Louisiana" numeric(10,1),
    "Maine" numeric(10,1),
    "Arizona" numeric(10,1),
    "Maryland" numeric(10,1),
    "Massachusetts" numeric(10,1),
    "Michigan" numeric(10,1),
    "Minnesota" numeric(10,1),
    "Missouri" numeric(10,1),
    "Mississippi" numeric(10,1),
    "Montana" numeric(10,1),
    "Nebraska" numeric(10,1),
    "Nevada" numeric(10,1),
    "New Hampshire" numeric(10,1),
    "Arkansas" numeric(10,1),
    "New Jersey" numeric(10,1),
    "New Mexico" numeric(10,1),
    "New York" numeric(10,1),
    "North Carolina" numeric(10,1),
    "North Dakota" numeric(10,1),
    "Ohio" numeric(10,1),
    "Oklahoma" numeric(10,1),
    "Oregon" numeric(10,1),
    "Pennsylvania" numeric(10,1),
    "Rhode Island" numeric(10,1),
    "California" numeric(10,1),
    "South Carolina" numeric(10,1),
    "South Dakota" numeric(10,1),
    "Tennessee" numeric(10,1),
    "Texas" numeric(10,1),
    "Utah" numeric(10,1),
    "Vermont" numeric(10,1),
    "Washington" numeric(10,1),
    "West Virginia" numeric(10,1),
    "Wisconsin" numeric(10,1),
    "Colorado" numeric(10,1),
    "Wyoming" numeric(10,1),
    "Connecticut" numeric(10,1),
    "Delaware" numeric(10,1),
    "District of Columbia" numeric(10,1),
    "Florida" numeric(10,1),
    "Alabama" numeric(10,1)
)

TABLESPACE pg_default;

ALTER TABLE public."Census_State"
    OWNER to postgres;