library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity ALU is
port( clk,reset,ACCclear:in std_logic;
     aluCONTR :in std_logic_vector(3 downto 0);
     BR       :in std_logic_vector(15 downto 0);
     PCjmp    :out std_logic;
     ACC      :buffer std_logic_vector(15 downto 0));
end ALU;
architecture behave of ALU is
  function div_add_sub(dividend, divisor : std_logic_vector(15 downto 0))
    return std_logic_vector is
    variable part_rem : signed(16 downto 0);
    variable quotient : unsigned(15 downto 0);
    variable divisor_ext : signed(16 downto 0);
  begin
    if divisor=x"0000" then
      return x"0000";
    end if;

    part_rem := (others=>'0');
    quotient := unsigned(dividend);
    divisor_ext := signed('0' & divisor);

    for i in 0 to 15 loop
      part_rem := signed(std_logic_vector(part_rem(15 downto 0)) & quotient(15));
      quotient := quotient(14 downto 0) & '0';

      if part_rem(16)='0' then
        part_rem := part_rem - divisor_ext;
      else
        part_rem := part_rem + divisor_ext;
      end if;

      if part_rem(16)='0' then
        quotient(0) := '1';
      else
        quotient(0) := '0';
      end if;
    end loop;

    if part_rem(16)='1' then
      part_rem := part_rem + divisor_ext;
    end if;

    return std_logic_vector(quotient);
  end function;
begin
  process(clk)
  begin
    if(clk'event and clk='0')then
     if reset='0' then ACC<=x"0000";
      else
       if ACCclear='1' then        ACC<=x"0000";       end if;
       if aluCONTR="0011" then   ACC<=BR+ACC;      end if;      --ADD
       if aluCONTR="0100" then   ACC<=ACC-BR;       end if;      --SUB
       if aluCONTR="0110" then   ACC<=ACC and BR;   end if;      --AND
       if aluCONTR="0111" then   ACC<=ACC or BR;    end if;       --OR
       if aluCONTR="1000" then   ACC<=not ACC;      end if;       --NOT
       if aluCONTR="1001" then                                   --SRR
          ACC(14 downto 0)<=ACC(15 downto 1);    ACC(15)<='0';
       end if;
       if aluCONTR="1010" then                                   --SRL
          ACC(15 downto 1)<=ACC(14 downto 0);     ACC(0)<='0';
       end if;
       if aluCONTR="1011" then   ACC <= ACC(7 downto 0)*BR(7 downto 0);       end if;     --MPY
       if aluCONTR="1100" then   ACC <= div_add_sub(ACC, BR);     end if;     --DIV
      end if;
     end if;
  end process;
  PCjmp <= '1' when ACC > x"0000" else '0';
end behave;
