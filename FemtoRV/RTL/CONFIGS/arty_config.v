// Default femtosoc configuration file for ARTY

/************************* Devices **********************************************************************************/

`define NRV_IO_LEDS          // Mapped IO, LEDs D1,D2,D3,D4 (D5 is used to display errors)
`define NRV_IO_UART          // Mapped IO, virtual UART (USB)
`define NRV_IO_SSD1351       // Mapped IO, 128x128x64K OLED screen
`define NRV_IO_MAX7219       // Mapped IO, 8x8 led matrix
`define NRV_MAPPED_SPI_FLASH // SPI flash mapped in address space. 

/************************* Processor configuration *******************************************************************/

`define NRV_FREQ 80          // Frequency in MHz, needs to be a multiple of 5
                              // Validated at 60 MHz, can overclock to 80 MHz

//`define NRV_FEMTORV32_QUARK // RV32I 
//`define NRV_FEMTORV32_TACHYON // RV32I
//`define NRV_FEMTORV32_ELECTRON // RV32IM
//`define NRV_FEMTORV32_INTERMISSUM // RV32IM, IRQ
`define NRV_FEMTORV32_GRACILIS // RV32IMC, IRQ

`define NRV_RESET_ADDR 0       // The address the processor jumps to on reset 

/************************* RAM (in bytes, needs to be a multiple of 4)***********************************************/

`define NRV_RAM 65536 

/************************* Advanced devices configuration ***********************************************************/

`define NRV_IO_HARDWARE_CONFIG // Comment-out to disable hardware config registers mapped in IO-Space
                               // (note: firmware libfemtorv32 depends on it)

/********************************************************************************************************************/

`define NRV_NEGATIVE_RESET // reset button active low

`define NRV_CONFIGURED