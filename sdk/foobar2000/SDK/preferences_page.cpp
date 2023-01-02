#include "foobar2000-sdk-pch.h"
#include "preferences_page.h"
#include "coreversion.h"

void preferences_page::get_help_url_helper(pfc::string_base & out, const char * category, const GUID & id, const char * name) {
	out.reset();
	out << "http://help.foobar2000.org/" << core_version_info::g_get_version_string() << "/" << category << "/" << pfc::print_guid(id) << "/" << name;
}
bool preferences_page::get_help_url(pfc::string_base & p_out) {
	get_help_url_helper(p_out,"preferences",get_guid(), get_name());
	return true;
}

double preferences_page::get_sort_priority_() {
    preferences_page_v2::ptr v2;
    if ( v2 &= this ) return v2->get_sort_priority();
    else return 0;
}
