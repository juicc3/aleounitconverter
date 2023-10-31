# Unit Converter in Leo 🌐

Welcome to the `unit_converter.aleo` program! 🚀 This Leo-based application is designed to convert various units of measurement seamlessly. The program is robust and supports a multitude of unit types to make your conversion tasks effortless and accurate.

## Precision Handling in Conversion 🎯

Since Leo does not natively support floating-point numbers, this program adopts a strategy to maintain precision during conversions. Numbers are first multiplied, and the division is carried out afterward. This approach helps in achieving more accurate conversion results by mitigating the loss of precision that typically accompanies division operations.

## Supported Unit Types 📊

The converter can handle the following types of units, each identified by a unique ID:

1. **Mass**
   - 1: Kilograms (kg)
   - 2: Grams (g)
   - 3: Pounds (lb)
   - 4: Ounces (oz)

2. **Length**
   - 1: Meters (m)
   - 2: Kilometers (km)
   - 3: Centimeters (cm)
   - 4: Miles (mi)
   - 5: Feet (ft)
   - 6: Inches (in)
   - 7: Yards (yd)

3. **Temperature**
   - 1: Celsius (°C)
   - 2: Fahrenheit (°F)
   - 3: Kelvin (K)

4. **Volume**
   - 1: Liters (L)
   - 2: Milliliters (mL)
   - 3: Cubic Meters (m³)
   - 4: Gallons (gal)

5. **Speed**
   - 1: Meters per Second (m/s)
   - 2: Kilometers per Hour (km/h)
   - 3: Miles per Hour (mph)

6. **Area**
   - 1: Square Meters (m²)
   - 2: Hectares (ha)
   - 3: Acres (ac)

7. **Energy**
   - 1: Joules (J)
   - 2: Kilowatt Hours (kWh)
   - 3: Calories (cal)

## How to Use 🛠

1. **Install [Leo](https://developer.aleo.org/leo/) compiler**

2. **Initialize the Unit**
   - Create a unit by specifying the `unit_type` and `identifier` as per the above categorizations.

3. **Perform Conversion**
   - Call the `main` function with the desired `from_unit`, `to_unit`, and the `amount` to be converted.
   - To do this you should run in you command line `leo run main` command with arguments.

4. **Get Results**
   - The function will return the converted value in the desired unit.

## Code Structure 🏗

- The core logic resides in the `convert` function, which handles the conversion logic.
- The `main` transition function acts as the entry point where units and amounts are specified for conversion.

Feel free to explore and utilize the code for your unit conversion needs in the world of the wonderful [Aleo](https://aleo.org/) blockchain! 🌟
