# STM32Embedded

This is a project for learning about ARM CPU architecture and embedded development. The goal of this project is simply to learn - if this ends up becoming a useful product then that's a happy side effect of learning about microcontrollers.

Notes to myself - to connect to the device:
1. Connect the board to the PC using a USB cable
2. Run the st-util tool to start the GDB server
3. Run GDB and connect to the server using the command
    target remote-extended :[PORT]
   Where default port is 4242.
