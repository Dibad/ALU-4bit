TARGET = alu-4bit

TB = alu_tb.v
FILES = alu.v cal.v cl.v fa.v compl1.v mux2_4.v

$(TARGET):
	iverilog $(TB) $(FILES) -o $@

clean:
	rm -f $(TARGET)
