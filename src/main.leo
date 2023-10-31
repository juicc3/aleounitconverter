// The 'unit_converter' program.
program unit_converter.aleo {
    struct Unit {
        unit_type: u8, 
        identifier: u8
    }

    /*
    types:
    1 - mass, 2 - length, 3 - temperature, 4 - volume, 5 - speed, 6 - area, 7 - energy

    units:
    [mass]
    1 - kilograms
    2 - grams
    3 - pounds
    4 - ounces

    [length]
    1 - meters
    2 - kilometers
    3 - centimeters
    4 - miles
    5 - feet
    6 - inches
    7 - yards

    [temperature]
    1 - celsius
    2 - fahrenheit
    3 - kelvin

    [volume]
    1 - liters
    2 - milliliters
    3 - cubic meters
    4 - gallons

    [speed]
    1 - meters per second
    2 - kilometers per hour
    3 - miles per hour

    [area]
    1 - square meters
    2 - hectares
    3 - acres

    [energy]
    1 - joules
    2 - kilowatt hours
    3 - calories
    */

    inline convert(from_unit: Unit, to_unit: Unit, amount: i128) -> i128 {
        assert(from_unit.unit_type == to_unit.unit_type);

        if (from_unit.unit_type == 1u8) { // mass
            if (from_unit.identifier == 1u8) { // kilograms
                if (to_unit.identifier == 2u8) { // grams
                    return amount * 1000i128;
                }
                else if (to_unit.identifier == 3u8) { // pounds
                    return amount * 2204622i128 / 1000000i128;
                }
                else if (to_unit.identifier == 4u8) { // ounces
                    return amount * 35274i128 / 1000000i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // grams
                if (to_unit.identifier == 1u8) { // kilograms
                    return amount / 1000i128;
                }
                else if (to_unit.identifier == 3u8) { // pounds
                    return amount * 2204622i128 / 1000000000i128;
                }
                else if (to_unit.identifier == 4u8) { // ounces
                    return amount * 35274i128 / 1000000000i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // pounds
                if (to_unit.identifier == 1u8) { // kilograms
                    return amount * 453592i128 / 1000000i128;
                }
                else if (to_unit.identifier == 2u8) { // grams
                    return amount * 453592i128 / 1000000000i128;
                }
                else if (to_unit.identifier == 4u8) { // ounces
                    return amount * 16i128 / 1000000i128;
                }
            }
            else if (from_unit.identifier == 4u8) { // ounces
                if (to_unit.identifier == 1u8) { // kilograms
                    return amount * 2834952i128 / 100000000i128;
                }
                else if (to_unit.identifier == 2u8) { // grams
                    return amount * 2834952i128 / 100000000000i128;
                }
                else if (to_unit.identifier == 3u8) { // pounds
                    return amount * 16i128 / 100000000i128;
                }
            }
        }
        else if (from_unit.unit_type == 2u8) { // length
            if (from_unit.identifier == 1u8) { // meters
                if (to_unit.identifier == 2u8) { // kilometers
                    return amount / 1000i128;
                }
                else if (to_unit.identifier == 3u8) { // centimeters
                    return amount * 100i128;
                }
                else if (to_unit.identifier == 4u8) { // miles
                    return amount * 160934i128 / 100000i128;
                }
                else if (to_unit.identifier == 5u8) { // feet
                    return amount * 328084i128 / 100000i128;
                }
                else if (to_unit.identifier == 6u8) { // inches
                    return amount * 393701i128 / 100000i128;
                }
                else if (to_unit.identifier == 7u8) { // yards
                    return amount * 1093613i128 / 1000000i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // kilometers
                if (to_unit.identifier == 1u8) { // meters
                    return amount * 1000i128;
                }
                else if (to_unit.identifier == 3u8) { // centimeters
                    return amount * 100000i128;
                }
                else if (to_unit.identifier == 4u8) { // miles
                    return amount * 1609344i128 / 1000i128;
                }
                else if (to_unit.identifier == 5u8) { // feet
                    return amount * 328084i128 / 100i128;
                }
                else if (to_unit.identifier == 6u8) { // inches
                    return amount * 393701i128 / 100i128;
                }
                else if (to_unit.identifier == 7u8) { // yards
                    return amount * 1093613i128 / 1000i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // centimeters
                if (to_unit.identifier == 1u8) { // meters
                    return amount / 100i128;
                }
                else if (to_unit.identifier == 2u8) { // kilometers
                    return amount / 100000i128;
                }
                else if (to_unit.identifier == 4u8) { // miles
                    return amount * 1609344i128 / 100000i128;
                }
                else if (to_unit.identifier == 5u8) { // feet
                    return amount * 328084i128 / 100000i128;
                }
                else if (to_unit.identifier == 6u8) { // inches
                    return amount * 393701i128 / 100000i128;
                }
                else if (to_unit.identifier == 7u8) { // yards
                    return amount * 1093613i128 / 1000000i128;
                }
            }
            else if (from_unit.identifier == 4u8) { // miles
                if (to_unit.identifier == 1u8) { // meters
                    return amount * 621371i128 / 100000i128;
                }
                else if (to_unit.identifier == 2u8) { // kilometers
                    return amount * 621371i128 / 100000000i128;
                }
                else if (to_unit.identifier == 3u8) { // centimeters
                    return amount * 1609344i128 / 100000000i128;
                }
                else if (to_unit.identifier == 5u8) { // feet
                    return amount * 201168i128 / 100000i128;
                }
                else if (to_unit.identifier == 6u8) { // inches
                    return amount * 191999i128 / 100000i128;
                }
                else if (to_unit.identifier == 7u8) { // yards
                    return amount * 534473i128 / 1000000i128;
                }
            }
            else if (from_unit.identifier == 5u8) { // feet
                if (to_unit.identifier == 1u8) { // meters
                    return amount * 3048i128 / 1000i128;
                }
                else if (to_unit.identifier == 2u8) { // kilometers
                    return amount * 3048i128 / 1000000i128;
                }
                else if (to_unit.identifier == 3u8) { // centimeters
                    return amount * 3048i128 / 100i128;
                }
                else if (to_unit.identifier == 4u8) { // miles
                    return amount * 1901475i128 / 100000i128;
                }
                else if (to_unit.identifier == 6u8) { // inches
                    return amount * 9i128 / 100i128;
                }
                else if (to_unit.identifier == 7u8) { // yards
                    return amount * 25146i128 / 100000i128;
                }
            }
            else if (from_unit.identifier == 6u8) { // inches
                if (to_unit.identifier == 1u8) { // meters
                    return amount * 10000i128;
                }
                else if (to_unit.identifier == 2u8) { // kilometers
                    return amount * 10000i128 / 1000000i128;
                }
                else if (to_unit.identifier == 3u8) { // centimeters
                    return amount * 10000i128 / 100i128;
                }
                else if (to_unit.identifier == 4u8) { // miles
                    return amount * 10000i128 / 100000000i128;
                }
                else if (to_unit.identifier == 5u8) { // feet
                    return amount * 10000i128 / 9i128;
                }
                else if (to_unit.identifier == 7u8) { // yards
                    return amount * 10000i128 / 1000000i128;
                }
            }
            else if (from_unit.identifier == 7u8) { // yards
                if (to_unit.identifier == 1u8) { // meters
                    return amount * 9144i128 / 1000i128;
                }
                else if (to_unit.identifier == 2u8) { // kilometers
                    return amount * 9144i128 / 1000000i128;
                }
                else if (to_unit.identifier == 3u8) { // centimeters
                    return amount * 9144i128 / 100i128;
                }
                else if (to_unit.identifier == 4u8) { // miles
                    return amount * 9144i128 / 100000000i128;
                }
                else if (to_unit.identifier == 5u8) { // feet
                    return amount * 9144i128 / 9i128;
                }
                else if (to_unit.identifier == 6u8) { // inches
                    return amount * 9144i128 / 10000i128;
                }
            }
        }
        else if (from_unit.unit_type == 3u8) { // temperature
            if (from_unit.identifier == 1u8) { // celsius
                if (to_unit.identifier == 2u8) { // fahrenheit
                    return amount * 9i128 / 5i128 + 32i128;
                }
                else if (to_unit.identifier == 3u8) { // kelvin
                    return amount + 27315i128 / 100i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // fahrenheit
                if (to_unit.identifier == 1u8) { // celsius
                    return (amount - 32i128) * 5i128 / 9i128;
                }
                else if (to_unit.identifier == 3u8) { // kelvin
                    return (amount - 32i128) * 5i128 / 9i128 + 27315i128 / 100i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // kelvin
                if (to_unit.identifier == 1u8) { // celsius
                    return amount - 27315i128 / 100i128;
                }
                else if (to_unit.identifier == 2u8) { // fahrenheit
                    return (amount - 27315i128 / 100i128) * 9i128 / 5i128 + 32i128;
                }
            }
        }
        else if (from_unit.unit_type == 4u8) { // volume
            if (from_unit.identifier == 1u8) { // liters
                if (to_unit.identifier == 2u8) { // milliliters
                    return amount * 1000i128;
                }
                else if (to_unit.identifier == 3u8) { // cubic meters
                    return amount * 1000000i128;
                }
                else if (to_unit.identifier == 4u8) { // gallons
                    return amount * 264172i128 / 100000i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // milliliters
                if (to_unit.identifier == 1u8) { // liters
                    return amount / 1000i128;
                }
                else if (to_unit.identifier == 3u8) { // cubic meters
                    return amount * 1000i128;
                }
                else if (to_unit.identifier == 4u8) { // gallons
                    return amount * 264172i128 / 100i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // cubic meters
                if (to_unit.identifier == 1u8) { // liters
                    return amount / 1000000i128;
                }
                else if (to_unit.identifier == 2u8) { // milliliters
                    return amount / 1000i128;
                }
                else if (to_unit.identifier == 4u8) { // gallons
                    return amount * 264172i128 / 100000000i128;
                }
            }
            else if (from_unit.identifier == 4u8) { // gallons
                if (to_unit.identifier == 1u8) { // liters
                    return amount * 378541i128 / 100000i128;
                }
                else if (to_unit.identifier == 2u8) { // milliliters
                    return amount * 378541i128 / 100000000i128;
                }
                else if (to_unit.identifier == 3u8) { // cubic meters
                    return amount * 378541i128 / 1000000000i128;
                }
            }
        }
        else if (from_unit.unit_type == 5u8) { // speed
            if (from_unit.identifier == 1u8) { // meters per second
                if (to_unit.identifier == 2u8) { // kilometers per hour
                    return amount * 36i128 / 10i128;
                }
                else if (to_unit.identifier == 3u8) { // miles per hour
                    return amount * 2237i128 / 1000i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // kilometers per hour
                if (to_unit.identifier == 1u8) { // meters per second
                    return amount * 10i128 / 36i128;
                }
                else if (to_unit.identifier == 3u8) { // miles per hour
                    return amount * 25i128 / 11i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // miles per hour
                if (to_unit.identifier == 1u8) { // meters per second
                    return amount * 1000i128 / 2237i128;
                }
                else if (to_unit.identifier == 2u8) { // kilometers per hour
                    return amount * 11i128 / 25i128;
                }
            }
        }
        else if (from_unit.unit_type == 6u8) { // area
            if (from_unit.identifier == 1u8) { // square meters
                if (to_unit.identifier == 2u8) { // hectares
                    return amount / 100i128;
                }
                else if (to_unit.identifier == 3u8) { // acres
                    return amount * 247105i128 / 100000i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // hectares
                if (to_unit.identifier == 1u8) { // square meters
                    return amount * 100i128;
                }
                else if (to_unit.identifier == 3u8) { // acres
                    return amount * 247105i128 / 10000i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // acres
                if (to_unit.identifier == 1u8) { // square meters
                    return amount * 100000i128 / 247105i128;
                }
                else if (to_unit.identifier == 2u8) { // hectares
                    return amount * 10000i128 / 247105i128;
                }
            }
        }
        else if (from_unit.unit_type == 7u8) { // energy
            if (from_unit.identifier == 1u8) { // joules
                if (to_unit.identifier == 2u8) { // kilowatt hours
                    return amount * 2777778i128 / 1000000i128;
                }
                else if (to_unit.identifier == 3u8) { // calories
                    return amount * 41868i128 / 100000i128;
                }
            }
            else if (from_unit.identifier == 2u8) { // kilowatt hours
                if (to_unit.identifier == 1u8) { // joules
                    return amount * 1000000i128 / 2777778i128;
                }
                else if (to_unit.identifier == 3u8) { // calories
                    return amount * 41868i128 / 2777778i128;
                }
            }
            else if (from_unit.identifier == 3u8) { // calories
                if (to_unit.identifier == 1u8) { // joules
                    return amount * 100000i128 / 41868i128;
                }
                else if (to_unit.identifier == 2u8) { // kilowatt hours
                    return amount * 2777778i128 / 41868i128;
                }
            }
        }

        return amount; // if the units are the same
    }

    transition main(from_unit: Unit, to_unit: Unit, amount: i128) -> i128 {
        return convert(from_unit, to_unit, amount);
    }
}
