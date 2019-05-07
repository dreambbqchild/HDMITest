	component soc_system is
		port (
			clk_clk           : in  std_logic := 'X'; -- clk
			hdmi_clk          : out std_logic;        -- clk
			reset_reset_n     : in  std_logic := 'X'; -- reset_n
			pll_locked_export : out std_logic         -- export
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --        clk.clk
			hdmi_clk          => CONNECTED_TO_hdmi_clk,          --       hdmi.clk
			reset_reset_n     => CONNECTED_TO_reset_reset_n,     --      reset.reset_n
			pll_locked_export => CONNECTED_TO_pll_locked_export  -- pll_locked.export
		);

