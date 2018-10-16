require_relative("models/property.rb")
require("pry-byebug")

property1 = Property.new(
  {
    "address" => "Acacia Lane",
    "value" => "100000",
    "number_of_bedrooms" => 4,
    "year_built" => 1980,
    "buy_let_status" => "buy",
    "square_footage" => 100,
    "build" => "Semi-detached"
  }
)

property2 = Property.new(
  {
    "address" => "Main Street",
    "value" => "120000",
    #{}"number_of_bedrooms" => 3,
    "year_built" => 1967,
    #{}"buy_let_status" => "let",
    "square_footage" => 80,
    "build" => "flat"
  }
)


property1.save
property2.save

properties = Property.all

property1.address = "1 Hope Street"
property1.update

# Property.delete_all
property1.delete_one

#properties = Property.all
p property_find = Property.find_by_id(1)
#properties = Property.all

#binding.pry
nil

#<PG::Result:0x00007ff68a09b860 status=PGRES_TUPLES_OK ntuples=0 nfields=8 cmd_tuples=0>
