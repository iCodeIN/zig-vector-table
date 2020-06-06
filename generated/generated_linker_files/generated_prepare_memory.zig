// generated/generated_linker_files/generated_prepare_memory.zig - do not edit - generated by build.zig

pub fn prepareMemory() void {
    data_loaded_in_flash_that_program_must_copy_to_ram: {
        const e = struct {
            extern var __data_loaded_in_flash_that_program_must_copy_to_ram_start: u8;
            extern var __data_loaded_in_flash_that_program_must_copy_to_ram_end: u8;
            extern var __data_loaded_in_flash_that_program_must_copy_to_ram_load_start: u8;
        };
        const start = &e.__data_loaded_in_flash_that_program_must_copy_to_ram_start;
        const end = &e.__data_loaded_in_flash_that_program_must_copy_to_ram_end;
        const slice = @ptrCast([*]u8, start)[0 .. @ptrToInt(end) - @ptrToInt(start)];
        const load_start = &e.__data_loaded_in_flash_that_program_must_copy_to_ram_load_start;
        const loaded_slice = @ptrCast([*]u8, load_start)[0..slice.len];
        std.mem.copy(u8, slice, loaded_slice);
    }
    data_that_program_must_set_to_zero: {
        const e = struct {
            extern var __data_that_program_must_set_to_zero_start: u8;
            extern var __data_that_program_must_set_to_zero_end: u8;
        };
        const start = &e.__data_that_program_must_set_to_zero_start;
        const end = &e.__data_that_program_must_set_to_zero_end;
        const slice = @ptrCast([*]u8, start)[0 .. @ptrToInt(end) - @ptrToInt(start)];
        std.mem.set(u8, slice, 0);
    }
}

const std = @import("std");
