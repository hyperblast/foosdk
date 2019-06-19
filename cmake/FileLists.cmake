# Generated by update-lists.sh

set(
    WTL_HEADERS
    wtl/Include/atlapp.h
    wtl/Include/atlcrack.h
    wtl/Include/atlctrls.h
    wtl/Include/atlctrlw.h
    wtl/Include/atlctrlx.h
    wtl/Include/atlddx.h
    wtl/Include/atldlgs.h
    wtl/Include/atldwm.h
    wtl/Include/atlfind.h
    wtl/Include/atlframe.h
    wtl/Include/atlgdi.h
    wtl/Include/atlmisc.h
    wtl/Include/atlprint.h
    wtl/Include/atlresce.h
    wtl/Include/atlres.h
    wtl/Include/atlribbon.h
    wtl/Include/atlscrl.h
    wtl/Include/atlsplit.h
    wtl/Include/atltheme.h
    wtl/Include/atluser.h
    wtl/Include/atlwince.h
    wtl/Include/atlwinx.h
)

set(
    SHARED_HEADERS
    sdk/foobar2000/shared/audio_math.h
    sdk/foobar2000/shared/fb2kdebug.h
    sdk/foobar2000/shared/filedialogs.h
    sdk/foobar2000/shared/shared.h
    sdk/foobar2000/shared/win32_misc.h
)

set(
    SHARED_LIBRARY
    sdk/foobar2000/shared/shared.lib
)

set(
    PFC_SOURCES
    sdk/pfc/audio_math.cpp
    sdk/pfc/audio_sample.cpp
    sdk/pfc/base64.cpp
    sdk/pfc/bit_array.cpp
    sdk/pfc/bsearch.cpp
    sdk/pfc/cpuid.cpp
    sdk/pfc/filehandle.cpp
    sdk/pfc/guid.cpp
    sdk/pfc/other.cpp
    sdk/pfc/pathUtils.cpp
    sdk/pfc/printf.cpp
    sdk/pfc/selftest.cpp
    sdk/pfc/sort.cpp
    sdk/pfc/string_base.cpp
    sdk/pfc/string_conv.cpp
    sdk/pfc/stringNew.cpp
    sdk/pfc/threads.cpp
    sdk/pfc/timers.cpp
    sdk/pfc/utf8.cpp
    sdk/pfc/wildcard.cpp
    sdk/pfc/win-objects.cpp
)

set(
    PFC_HEADERS
    sdk/pfc/alloc.h
    sdk/pfc/array.h
    sdk/pfc/audio_sample.h
    sdk/pfc/avltree.h
    sdk/pfc/base64.h
    sdk/pfc/binary_search.h
    sdk/pfc/bit_array.h
    sdk/pfc/bit_array_impl.h
    sdk/pfc/bit_array_impl_part2.h
    sdk/pfc/bsearch.h
    sdk/pfc/bsearch_inline.h
    sdk/pfc/byte_order_helper.h
    sdk/pfc/chain_list_v2.h
    sdk/pfc/cmd_thread.h
    sdk/pfc/com_ptr_t.h
    sdk/pfc/cpuid.h
    sdk/pfc/event.h
    sdk/pfc/filehandle.h
    sdk/pfc/guid.h
    sdk/pfc/instance_tracker.h
    sdk/pfc/int_types.h
    sdk/pfc/iterators.h
    sdk/pfc/list.h
    sdk/pfc/lockless.h
    sdk/pfc/map.h
    sdk/pfc/memalign.h
    sdk/pfc/nix-objects.h
    sdk/pfc/order_helper.h
    sdk/pfc/other.h
    sdk/pfc/pathUtils.h
    sdk/pfc/pfc.h
    sdk/pfc/pocket_char_ops.h
    sdk/pfc/pool.h
    sdk/pfc/pp-gettickcount.h
    sdk/pfc/pp-winapi.h
    sdk/pfc/primitives.h
    sdk/pfc/primitives_part2.h
    sdk/pfc/ptrholder.h
    sdk/pfc/ptr_list.h
    sdk/pfc/rcptr.h
    sdk/pfc/ref_counter.h
    sdk/pfc/sort.h
    sdk/pfc/splitString.h
    sdk/pfc/string8_impl.h
    sdk/pfc/string_base.h
    sdk/pfc/string_conv.h
    sdk/pfc/string_list.h
    sdk/pfc/stringNew.h
    sdk/pfc/suppress_fb2k_hooks.h
    sdk/pfc/syncd_storage.h
    sdk/pfc/synchro.h
    sdk/pfc/synchro_win.h
    sdk/pfc/threads.h
    sdk/pfc/timers.h
    sdk/pfc/traits.h
    sdk/pfc/wait_queue.h
    sdk/pfc/wildcard.h
    sdk/pfc/win-objects.h
)

set(
    SDK_SOURCES
    sdk/foobar2000/SDK/abort_callback.cpp
    sdk/foobar2000/SDK/advconfig.cpp
    sdk/foobar2000/SDK/album_art.cpp
    sdk/foobar2000/SDK/app_close_blocker.cpp
    sdk/foobar2000/SDK/audio_chunk.cpp
    sdk/foobar2000/SDK/audio_chunk_channel_config.cpp
    sdk/foobar2000/SDK/cfg_var.cpp
    sdk/foobar2000/SDK/chapterizer.cpp
    sdk/foobar2000/SDK/commandline.cpp
    sdk/foobar2000/SDK/completion_notify.cpp
    sdk/foobar2000/SDK/componentversion.cpp
    sdk/foobar2000/SDK/config_io_callback.cpp
    sdk/foobar2000/SDK/config_object.cpp
    sdk/foobar2000/SDK/console.cpp
    sdk/foobar2000/SDK/dsp.cpp
    sdk/foobar2000/SDK/dsp_manager.cpp
    sdk/foobar2000/SDK/file_cached_impl.cpp
    sdk/foobar2000/SDK/file_info.cpp
    sdk/foobar2000/SDK/file_info_impl.cpp
    sdk/foobar2000/SDK/file_info_merge.cpp
    sdk/foobar2000/SDK/file_operation_callback.cpp
    sdk/foobar2000/SDK/filesystem.cpp
    sdk/foobar2000/SDK/filesystem_helper.cpp
    sdk/foobar2000/SDK/foosort.cpp
    sdk/foobar2000/SDK/guids.cpp
    sdk/foobar2000/SDK/hasher_md5.cpp
    sdk/foobar2000/SDK/input.cpp
    sdk/foobar2000/SDK/input_file_type.cpp
    sdk/foobar2000/SDK/link_resolver.cpp
    sdk/foobar2000/SDK/mainmenu.cpp
    sdk/foobar2000/SDK/main_thread_callback.cpp
    sdk/foobar2000/SDK/mem_block_container.cpp
    sdk/foobar2000/SDK/menu_helpers.cpp
    sdk/foobar2000/SDK/menu_item.cpp
    sdk/foobar2000/SDK/menu_manager.cpp
    sdk/foobar2000/SDK/metadb.cpp
    sdk/foobar2000/SDK/metadb_handle.cpp
    sdk/foobar2000/SDK/metadb_handle_list.cpp
    sdk/foobar2000/SDK/output.cpp
    sdk/foobar2000/SDK/packet_decoder.cpp
    sdk/foobar2000/SDK/playable_location.cpp
    sdk/foobar2000/SDK/playback_control.cpp
    sdk/foobar2000/SDK/playlist.cpp
    sdk/foobar2000/SDK/playlist_loader.cpp
    sdk/foobar2000/SDK/popup_message.cpp
    sdk/foobar2000/SDK/preferences_page.cpp
    sdk/foobar2000/SDK/replaygain.cpp
    sdk/foobar2000/SDK/replaygain_info.cpp
    sdk/foobar2000/SDK/search_tools.cpp
    sdk/foobar2000/SDK/service.cpp
    sdk/foobar2000/SDK/tag_processor.cpp
    sdk/foobar2000/SDK/tag_processor_id3v2.cpp
    sdk/foobar2000/SDK/threaded_process.cpp
    sdk/foobar2000/SDK/titleformat.cpp
    sdk/foobar2000/SDK/ui.cpp
    sdk/foobar2000/SDK/ui_element.cpp
    sdk/foobar2000/SDK/utility.cpp
)

set(
    SDK_HEADERS
    sdk/foobar2000/SDK/abort_callback.h
    sdk/foobar2000/SDK/advconfig.h
    sdk/foobar2000/SDK/album_art.h
    sdk/foobar2000/SDK/album_art_helpers.h
    sdk/foobar2000/SDK/app_close_blocker.h
    sdk/foobar2000/SDK/audio_chunk.h
    sdk/foobar2000/SDK/audio_chunk_impl.h
    sdk/foobar2000/SDK/audio_postprocessor.h
    sdk/foobar2000/SDK/autoplaylist.h
    sdk/foobar2000/SDK/cfg_var.h
    sdk/foobar2000/SDK/chapterizer.h
    sdk/foobar2000/SDK/commandline.h
    sdk/foobar2000/SDK/commonObjects.h
    sdk/foobar2000/SDK/completion_notify.h
    sdk/foobar2000/SDK/component.h
    sdk/foobar2000/SDK/componentversion.h
    sdk/foobar2000/SDK/config_io_callback.h
    sdk/foobar2000/SDK/config_object.h
    sdk/foobar2000/SDK/config_object_impl.h
    sdk/foobar2000/SDK/console.h
    sdk/foobar2000/SDK/contextmenu.h
    sdk/foobar2000/SDK/contextmenu_manager.h
    sdk/foobar2000/SDK/core_api.h
    sdk/foobar2000/SDK/coreversion.h
    sdk/foobar2000/SDK/decode_postprocessor.h
    sdk/foobar2000/SDK/dsp.h
    sdk/foobar2000/SDK/dsp_manager.h
    sdk/foobar2000/SDK/event_logger.h
    sdk/foobar2000/SDK/exceptions.h
    sdk/foobar2000/SDK/filesystem_transacted.h
    sdk/foobar2000/SDK/file_format_sanitizer.h
    sdk/foobar2000/SDK/file_info.h
    sdk/foobar2000/SDK/file_info_impl.h
    sdk/foobar2000/SDK/file_lock_manager.h
    sdk/foobar2000/SDK/file_operation_callback.h
    sdk/foobar2000/SDK/filesystem.h
    sdk/foobar2000/SDK/filesystem_helper.h
    sdk/foobar2000/SDK/foobar2000-dsp.h
    sdk/foobar2000/SDK/foobar2000-pfc.h
    sdk/foobar2000/SDK/foobar2000-winver.h
    sdk/foobar2000/SDK/foobar2000.h
    sdk/foobar2000/SDK/foosort.h
    sdk/foobar2000/SDK/genrand.h
    sdk/foobar2000/SDK/hasher_md5.h
    sdk/foobar2000/SDK/http_client.h
    sdk/foobar2000/SDK/icon_remap.h
    sdk/foobar2000/SDK/info_lookup_handler.h
    sdk/foobar2000/SDK/initquit.h
    sdk/foobar2000/SDK/input.h
    sdk/foobar2000/SDK/input_file_type.h
    sdk/foobar2000/SDK/input_impl.h
    sdk/foobar2000/SDK/library_manager.h
    sdk/foobar2000/SDK/link_resolver.h
    sdk/foobar2000/SDK/main_thread_callback.h
    sdk/foobar2000/SDK/mem_block_container.h
    sdk/foobar2000/SDK/menu.h
    sdk/foobar2000/SDK/menu_helpers.h
    sdk/foobar2000/SDK/message_loop.h
    sdk/foobar2000/SDK/metadb.h
    sdk/foobar2000/SDK/metadb_handle.h
    sdk/foobar2000/SDK/modeless_dialog.h
    sdk/foobar2000/SDK/ole_interaction.h
    sdk/foobar2000/SDK/output.h
    sdk/foobar2000/SDK/packet_decoder.h
    sdk/foobar2000/SDK/play_callback.h
    sdk/foobar2000/SDK/playable_location.h
    sdk/foobar2000/SDK/playback_control.h
    sdk/foobar2000/SDK/playback_stream_capture.h
    sdk/foobar2000/SDK/playlist.h
    sdk/foobar2000/SDK/playlist_loader.h
    sdk/foobar2000/SDK/popup_message.h
    sdk/foobar2000/SDK/preferences_page.h
    sdk/foobar2000/SDK/progress_meter.h
    sdk/foobar2000/SDK/replaygain.h
    sdk/foobar2000/SDK/replaygain_scanner.h
    sdk/foobar2000/SDK/resampler.h
    sdk/foobar2000/SDK/search_tools.h
    sdk/foobar2000/SDK/service.h
    sdk/foobar2000/SDK/service_by_guid.h
    sdk/foobar2000/SDK/service_factory.h
    sdk/foobar2000/SDK/service_impl.h
    sdk/foobar2000/SDK/system_time_keeper.h
    sdk/foobar2000/SDK/tag_processor.h
    sdk/foobar2000/SDK/threaded_process.h
    sdk/foobar2000/SDK/titleformat.h
    sdk/foobar2000/SDK/track_property.h
    sdk/foobar2000/SDK/ui.h
    sdk/foobar2000/SDK/ui_edit_context.h
    sdk/foobar2000/SDK/ui_element.h
    sdk/foobar2000/SDK/unpack.h
    sdk/foobar2000/SDK/vis.h
)

set(
    SDK_HELPERS_SOURCES
    sdk/foobar2000/helpers/clipboard.cpp
    sdk/foobar2000/helpers/CPowerRequest.cpp
    sdk/foobar2000/helpers/create_directory_helper.cpp
    sdk/foobar2000/helpers/cue_creator.cpp
    sdk/foobar2000/helpers/cue_parser.cpp
    sdk/foobar2000/helpers/cue_parser_embedding.cpp
    sdk/foobar2000/helpers/cuesheet_index_list.cpp
    sdk/foobar2000/helpers/dialog_resize_helper.cpp
    sdk/foobar2000/helpers/dropdown_helper.cpp
    sdk/foobar2000/helpers/dynamic_bitrate_helper.cpp
    sdk/foobar2000/helpers/file_info_const_impl.cpp
    sdk/foobar2000/helpers/file_list_helper.cpp
    sdk/foobar2000/helpers/file_move_helper.cpp
    sdk/foobar2000/helpers/filetimetools.cpp
    sdk/foobar2000/helpers/file_win32_wrapper.cpp
    sdk/foobar2000/helpers/IDataObjectUtils.cpp
    sdk/foobar2000/helpers/input_helpers.cpp
    sdk/foobar2000/helpers/listview_helper.cpp
    sdk/foobar2000/helpers/mp3_utils.cpp
    sdk/foobar2000/helpers/packet_decoder_aac_common.cpp
    sdk/foobar2000/helpers/packet_decoder_mp3_common.cpp
    sdk/foobar2000/helpers/readers.cpp
    sdk/foobar2000/helpers/seekabilizer.cpp
    sdk/foobar2000/helpers/SmartStrStr.cpp
    sdk/foobar2000/helpers/stream_buffer_helper.cpp
    sdk/foobar2000/helpers/text_file_loader.cpp
    sdk/foobar2000/helpers/ThreadUtils.cpp
    sdk/foobar2000/helpers/VisUtils.cpp
    sdk/foobar2000/helpers/win32_dialog.cpp
    sdk/foobar2000/helpers/win32_misc.cpp
    sdk/foobar2000/helpers/window_placement_helper.cpp
    sdk/foobar2000/helpers/writer_wav.cpp
)

set(
    SDK_HELPERS_HEADERS
    sdk/foobar2000/helpers/advconfig_runtime.h
    sdk/foobar2000/helpers/album_art_helpers.h
    sdk/foobar2000/helpers/CmdThread.h
    sdk/foobar2000/helpers/CPowerRequest.h
    sdk/foobar2000/helpers/CPropVariant.h
    sdk/foobar2000/helpers/CSingleThreadWrapper.h
    sdk/foobar2000/helpers/duration_counter.h
    sdk/foobar2000/helpers/fb2k_threads.h
    sdk/foobar2000/helpers/fb2k_wfx.h
    sdk/foobar2000/helpers/fileReadAhead.h
    sdk/foobar2000/helpers/fullFileBuffer.h
    sdk/foobar2000/helpers/bitreader_helper.h
    sdk/foobar2000/helpers/CallForwarder.h
    sdk/foobar2000/helpers/cfg_guidlist.h
    sdk/foobar2000/helpers/clipboard.h
    sdk/foobar2000/helpers/COM_utils.h
    sdk/foobar2000/helpers/create_directory_helper.h
    sdk/foobar2000/helpers/cue_creator.h
    sdk/foobar2000/helpers/cue_parser.h
    sdk/foobar2000/helpers/cuesheet_index_list.h
    sdk/foobar2000/helpers/dialog_resize_helper.h
    sdk/foobar2000/helpers/dropdown_helper.h
    sdk/foobar2000/helpers/dynamic_bitrate_helper.h
    sdk/foobar2000/helpers/file_cached.h
    sdk/foobar2000/helpers/file_info_const_impl.h
    sdk/foobar2000/helpers/file_list_helper.h
    sdk/foobar2000/helpers/file_move_helper.h
    sdk/foobar2000/helpers/file_win32_wrapper.h
    sdk/foobar2000/helpers/filetimetools.h
    sdk/foobar2000/helpers/gdiplus_helpers.h
    sdk/foobar2000/helpers/helpers.h
    sdk/foobar2000/helpers/icon_remapping_wildcard.h
    sdk/foobar2000/helpers/IDataObjectUtils.h
    sdk/foobar2000/helpers/input_fix_seeking.h
    sdk/foobar2000/helpers/input_helpers.h
    sdk/foobar2000/helpers/input_stream_info_reader.h
    sdk/foobar2000/helpers/listview_helper.h
    sdk/foobar2000/helpers/meta_table_builder.h
    sdk/foobar2000/helpers/metadb_io_hintlist.h
    sdk/foobar2000/helpers/mp3_utils.h
    sdk/foobar2000/helpers/packet_decoder_aac_common.h
    sdk/foobar2000/helpers/packet_decoder_mp3_common.h
    sdk/foobar2000/helpers/playlist_position_reference_tracker.h
    sdk/foobar2000/helpers/ProcessUtils.h
    sdk/foobar2000/helpers/ProfileCache.h
    sdk/foobar2000/helpers/readers.h
    sdk/foobar2000/helpers/reader_pretend_nonseekable.h
    sdk/foobar2000/helpers/rethrow.h
    sdk/foobar2000/helpers/seekabilizer.h
    sdk/foobar2000/helpers/SmartStrStr.h
    sdk/foobar2000/helpers/StdAfx.h
    sdk/foobar2000/helpers/stream_buffer_helper.h
    sdk/foobar2000/helpers/tag_write_callback_impl.h
    sdk/foobar2000/helpers/text_file_loader.h
    sdk/foobar2000/helpers/ThreadUtils.h
    sdk/foobar2000/helpers/TypeFind.h
    sdk/foobar2000/helpers/VisUtils.h
    sdk/foobar2000/helpers/win32_dialog.h
    sdk/foobar2000/helpers/win32_misc.h
    sdk/foobar2000/helpers/win32_op.h
    sdk/foobar2000/helpers/window_placement_helper.h
    sdk/foobar2000/helpers/writer_wav.h
)

set(
    ATL_HELPERS_SOURCES
    sdk/foobar2000/ATLHelpers/AutoComplete.cpp
    sdk/foobar2000/ATLHelpers/CDialogResizeHelper.cpp
    sdk/foobar2000/ATLHelpers/inplace_edit.cpp
    sdk/foobar2000/ATLHelpers/inplace_edit_v2.cpp
    sdk/foobar2000/ATLHelpers/misc.cpp
    sdk/foobar2000/ATLHelpers/ui_element_helpers.cpp
)

set(
    ATL_HELPERS_HEADERS
    sdk/foobar2000/ATLHelpers/ATLHelpers.h
    sdk/foobar2000/ATLHelpers/ATLHelpersLean.h
    sdk/foobar2000/ATLHelpers/AutoComplete.h
    sdk/foobar2000/ATLHelpers/BumpableElem.h
    sdk/foobar2000/ATLHelpers/CButtonLite.h
    sdk/foobar2000/ATLHelpers/CDialogResizeHelper.h
    sdk/foobar2000/ATLHelpers/CEditWithButtons.h
    sdk/foobar2000/ATLHelpers/CFlashWindow.h
    sdk/foobar2000/ATLHelpers/CIconOverlayWindow.h
    sdk/foobar2000/ATLHelpers/CMiddleDragImpl.h
    sdk/foobar2000/ATLHelpers/Controls.h
    sdk/foobar2000/ATLHelpers/GDIUtils.h
    sdk/foobar2000/ATLHelpers/inplace_edit.h
    sdk/foobar2000/ATLHelpers/inplace_edit_v2.h
    sdk/foobar2000/ATLHelpers/misc.h
    sdk/foobar2000/ATLHelpers/stdafx.h
    sdk/foobar2000/ATLHelpers/ui_element_helpers.h
    sdk/foobar2000/ATLHelpers/WindowPositionUtils.h
    sdk/foobar2000/ATLHelpers/WTL-PP.h
)

set(
    COMPONENT_CLIENT_SOURCES
    sdk/foobar2000/foobar2000_component_client/component_client.cpp
)

set(
    SAMPLE_SOURCES
    sdk/foobar2000/foo_sample/contextmenu.cpp
    sdk/foobar2000/foo_sample/decode.cpp
    sdk/foobar2000/foo_sample/dsp.cpp
    sdk/foobar2000/foo_sample/initquit.cpp
    sdk/foobar2000/foo_sample/input_raw.cpp
    sdk/foobar2000/foo_sample/main.cpp
    sdk/foobar2000/foo_sample/mainmenu.cpp
    sdk/foobar2000/foo_sample/IO.cpp
    sdk/foobar2000/foo_sample/playback_state.cpp
    sdk/foobar2000/foo_sample/preferences.cpp
    sdk/foobar2000/foo_sample/rating.cpp
    sdk/foobar2000/foo_sample/ui_and_threads.cpp
    sdk/foobar2000/foo_sample/ui_element.cpp
    sdk/foobar2000/foo_sample/ui_element_dialog.cpp
    sdk/foobar2000/foo_sample/foo_sample.rc
)

set(
    SAMPLE_HEADERS
    sdk/foobar2000/foo_sample/resource.h
    sdk/foobar2000/foo_sample/stdafx.h
)
