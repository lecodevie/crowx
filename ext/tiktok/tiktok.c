#include "tiktok.h"

VALUE rb_mTiktok;

RUBY_FUNC_EXPORTED void
Init_tiktok(void)
{
  rb_mTiktok = rb_define_module("Tiktok");
}
