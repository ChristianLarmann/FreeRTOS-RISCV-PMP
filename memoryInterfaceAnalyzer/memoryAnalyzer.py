
# Trigger
LSU_REQ_HIGH_char = "1'!"
LSU_REQ_LOW_char = "0'!"
LSU_RVALID_HIGH_char = "1)!"
LSU_WE_char = "1+!"
LSU_RE_char = "0+!"

# Address
LSU_ADDR_char = "*!"
# LSU_RVALID_char = ")!"  # Weird that there is no wvalid but it seems to work for both

# Data
LSU_WDATA_char = ".!"
LSU_RDATA_char = "-!"

# Status variables
req_in_current_cycle = False
rvalid_in_current_cycle: bool = False
current_address = 0
address_at_req = 0  # Important because the read address could have changed when rvalid arrives
current_write_data = 0
current_read_data = 0
currently_we = False
we_at_req = False

SIGNALS = [LSU_RDATA_char, LSU_REQ_LOW_char, LSU_RE_char, LSU_REQ_HIGH_char, LSU_WE_char, LSU_WDATA_char, LSU_ADDR_char, LSU_RVALID_HIGH_char]

DATA_OFFSET = 0x1c010000
memory = [0] * 0x10000
address_was_written_to = [False] * 0x10000
last_write_timestamp = [0] * 0x10000

# Debug
success_counter = 0
error_counter = 0


def is_next_clock_cycle(signal_name: str):
    if signal_name == "":
        return False
    elif signal_name[0] == '#':
        return True
    else:
        return False


def extract_value_from_line(line_with_value):
    val_str = line_with_value.split(" ")[0]
    if val_str not in ["bx", "bz"]:  # Consider undefined X state
        val = int(val_str[1:], 2)
        # print(hex(val))
        return val
    elif val_str == "bz":
        print("BZ!!")
        return 0
    else:
        return 0


def process_write_mem_access(timestamp):
    offset = current_address - DATA_OFFSET

    if not 0 <= offset < 0xFFFF:
        if 0x2010_0000 <= current_address < 0x2010_FFFF:
            print(f"Timer accessed, Address: {hex(current_address)}")
            return
        else:
            print(f"ADDRESS OUT OF BOUNDS: {hex(current_address)}")
            return

    if we_at_req:  # Only write access relevant at lsu_req
        memory[offset] = current_write_data
        # print( f"--- \tWrite {hex(current_write_data)} to {hex(current_address)} ")
        address_was_written_to[offset] = True
        last_write_timestamp[offset] = timestamp

    else:
        pass  # will be handled in following function


def process_read_mem_access():
    global success_counter, error_counter
    offset = address_at_req - DATA_OFFSET

    if not we_at_req:  # Only read access relevant at lsu_gnt
        if address_was_written_to[offset]:  # read access of written cell
            expected_value = memory[offset]
            if expected_value != current_read_data:
                # ERROR
                print(f"READ ERROR at \t{hex(address_at_req)} | Expected value: {hex(expected_value)} ({last_write_timestamp[offset]}ns), \t\t\tread value: {hex(current_read_data)} ")
                error_counter += 1
            else:
                # Debug
                print(f"READ SUCCESS at \t{hex(address_at_req)} | Expected value: {hex(expected_value)} ({last_write_timestamp[offset]}ns), \t\t\tread value: {hex(current_read_data)} ")
                success_counter += 1


def get_timestamp(timestamp_line):
    return int(timestamp_line[1:])


with open("mem_interface.vcd", 'r') as vcd:
    for i, line in enumerate(vcd):
        if True:  # i < 1000000:  # Process only the first 10 lines
            signal_name: str = line.split(" ")[-1].strip()  # strip for removing \n
            #print(f'{i}:{signal_name}')

            if signal_name in SIGNALS:
                if signal_name == LSU_REQ_HIGH_char:
                    req_in_current_cycle = True

                if signal_name == LSU_RVALID_HIGH_char:
                    rvalid_in_current_cycle = True

                if signal_name == LSU_ADDR_char:
                    current_address = extract_value_from_line(line)

                if signal_name == LSU_WE_char:
                    currently_we = True

                if signal_name == LSU_RE_char:
                    currently_we = False

                if signal_name == LSU_RDATA_char:
                    current_read_data = extract_value_from_line(line)
                if signal_name == LSU_WDATA_char:
                    current_write_data = extract_value_from_line(line)

            # Simulate step
            if is_next_clock_cycle(line):
                if req_in_current_cycle:
                    req_in_current_cycle = False  # The request must be reset manually
                    address_at_req = current_address
                    we_at_req = currently_we
                    process_write_mem_access(get_timestamp(line))
                    # print(line)
                elif rvalid_in_current_cycle:
                    rvalid_in_current_cycle = False
                    process_read_mem_access()

        else:
            break
