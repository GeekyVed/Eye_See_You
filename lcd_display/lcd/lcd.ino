#include <Wire.h>
#include <LiquidCrystal_I2C.h>

// Set the LCD address to 0x27 or the address based on your specific LCD module
LiquidCrystal_I2C lcd(0x27, 16, 2);

void setup() {
  // Initialize the LCD
  lcd.begin(16, 2);

  // Turn on the backlight
  lcd.setBacklight(LOW);

  // Print a welcome message
  lcd.print("ESP32 LCD Demo");
  lcd.setCursor(0, 1);
  lcd.print("Hello, World!");
}

void loop() {
  // Your main code goes here
  // For demonstration purposes, this example just loops indefinitely
}
