# Lab 7: Jan Mucha

### Display driver

1. Listing of VHDL code of the completed process `p_mux`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_mux:
    -- A sequential process that implements a multiplexer for
    -- selecting data for a single digit, a decimal point 
    -- signal, and switches the common anodes of each display.
    --------------------------------------------------------
    p_mux : process(clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                s_hex <= data0_i;
                dp_o  <= dp_i(0);
                dig_o <= "1110";
            else
                case s_cnt is
                    when "11" =>
                        s_hex <= data3_i;
                        dp_o  <= dp_i(3);
                        dig_o <= "0111";

                    when "10" =>
                        s_hex <= data2_i;
                        dp_o  <= dp_i(2);
                        dig_o <= "1011";

                    when "01" =>
                        s_hex <= data1_i;
                        dp_o  <= dp_i(1);
                        dig_o <= "1101";

                    when others =>
                        s_hex <= data0_i;
                        dp_o  <= dp_i(0);
                        dig_o <= "1110";
                end case;
            end if;
        end if;
    end process p_mux;
```

2. Screenshot with simulated time waveforms. Test reset as well. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/99410528/161848263-b62aceaf-e5bd-4a33-afac-e79e6a84b611.png)

### Eight-digit driver

![image](https://user-images.githubusercontent.com/99410528/161851739-a0268f9d-318c-49ed-9dad-01d4af191345.png)

