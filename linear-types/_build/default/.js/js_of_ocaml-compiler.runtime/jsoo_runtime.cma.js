// Generated by js_of_ocaml
//# buildInfo:effects=false, use-js-string=false, version=5.0.1
(function
   (globalThis)
   {"use strict";
    var
     runtime=globalThis.jsoo_runtime,
     caml_exn_with_js_backtrace=runtime.caml_exn_with_js_backtrace,
     caml_register_global=runtime.caml_register_global,
     caml_string_of_jsbytes=runtime.caml_string_of_jsbytes;
    function caml_call2(f,a0,a1)
     {return f.length == 2?f(a0,a1):runtime.caml_call_gen(f,[a0,a1])}
    var
     global_data=runtime.caml_get_global_data(),
     version=caml_string_of_jsbytes("5.0.1"),
     git_version=caml_string_of_jsbytes(""),
     cst_Jsoo_runtime_Error_Exn=
      caml_string_of_jsbytes("Jsoo_runtime.Error.Exn"),
     cst_jsError=caml_string_of_jsbytes("jsError"),
     Stdlib_Callback=global_data.Stdlib__Callback,
     Jsoo_runtime=[0];
    caml_register_global(5,Jsoo_runtime,"Jsoo_runtime__");
    var Jsoo_runtime_Runtime_version=[0,version,git_version];
    caml_register_global
     (6,Jsoo_runtime_Runtime_version,"Jsoo_runtime__Runtime_version");
    var
     Js=[0],
     Config=[0],
     Sys=[0,Config,version,git_version],
     Exn=[248,cst_Jsoo_runtime_Error_Exn,runtime.caml_fresh_oo_id(0)];
    caml_call2(Stdlib_Callback[2],cst_jsError,[0,Exn,[0]]);
    function raise(exn){throw exn}
    var
     Error=
      [0,
       raise,
       caml_exn_with_js_backtrace,
       runtime.caml_js_error_option_of_exception,
       Exn],
     For_compatibility_only=[0],
     Bigstring=[0],
     Typed_array=[0,Bigstring],
     Int64=[0],
     Jsoo_runtime$0=[0,Js,Sys,Error,For_compatibility_only,Typed_array,Int64];
    caml_register_global(8,Jsoo_runtime$0,"Jsoo_runtime");
    return}
  (globalThis));

//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLjAsImZpbGUiOiJqc29vX3J1bnRpbWUuY21hLmpzIiwic291cmNlUm9vdCI6IiIsIm5hbWVzIjpbInZlcnNpb24iLCJnaXRfdmVyc2lvbiIsInJhaXNlIiwiZXhuIl0sInNvdXJjZXMiOlsiL1VzZXJzL2t5YS8ub3BhbS9kZWZhdWx0L2xpYi9qc19vZl9vY2FtbC1jb21waWxlci9ydW50aW1lL2pzb29fcnVudGltZS5tbCJdLCJtYXBwaW5ncyI6Ijs7Ozs7STs7Ozs7Ozs7O0tBa0hNQTtLQUVBQzs7Ozs7Ozt3Q0FGQUQsUUFFQUM7OztJQXBITTs7O21CQWtITkQsUUFFQUM7S0FwSE07SUFrSkY7SUFFZSxTQUFuQkMsTUFBS0MsS0FBTyxNQUFNQSxHQUF2QjtJQUF3Qjs7O09BQW5CRDs7OztLQUFtQjs7Ozs7O1UiLCJzb3VyY2VzQ29udGVudCI6WyJtb2R1bGUgSnMgPSBzdHJ1Y3RcbiAgdHlwZSB0XG5cbiAgdHlwZSAnYSBqc19hcnJheSA9IHRcblxuICB0eXBlICgnYSwgJ2IpIG1ldGhfY2FsbGJhY2sgPSB0XG5cbiAgZXh0ZXJuYWwgc3RyaW5nIDogc3RyaW5nIC0+IHQgPSBcImNhbWxfanNzdHJpbmdfb2Zfc3RyaW5nXCJcblxuICBleHRlcm5hbCB0b19zdHJpbmcgOiB0IC0+IHN0cmluZyA9IFwiY2FtbF9zdHJpbmdfb2ZfanNzdHJpbmdcIlxuXG4gIGV4dGVybmFsIGJ5dGVzdHJpbmcgOiBzdHJpbmcgLT4gdCA9IFwiY2FtbF9qc2J5dGVzX29mX3N0cmluZ1wiXG5cbiAgZXh0ZXJuYWwgdG9fYnl0ZXN0cmluZyA6IHQgLT4gc3RyaW5nID0gXCJjYW1sX3N0cmluZ19vZl9qc2J5dGVzXCJcblxuICBleHRlcm5hbCBib29sIDogYm9vbCAtPiB0ID0gXCJjYW1sX2pzX2Zyb21fYm9vbFwiXG5cbiAgZXh0ZXJuYWwgdG9fYm9vbCA6IHQgLT4gYm9vbCA9IFwiY2FtbF9qc190b19ib29sXCJcblxuICBleHRlcm5hbCBhcnJheSA6ICdhIGFycmF5IC0+IHQgPSBcImNhbWxfanNfZnJvbV9hcnJheVwiXG5cbiAgZXh0ZXJuYWwgdG9fYXJyYXkgOiB0IC0+ICdhIGFycmF5ID0gXCJjYW1sX2pzX3RvX2FycmF5XCJcblxuICBleHRlcm5hbCBudW1iZXJfb2ZfZmxvYXQgOiBmbG9hdCAtPiB0ID0gXCJjYW1sX2pzX2Zyb21fZmxvYXRcIlxuXG4gIGV4dGVybmFsIGZsb2F0X29mX251bWJlciA6IHQgLT4gZmxvYXQgPSBcImNhbWxfanNfdG9fZmxvYXRcIlxuXG4gIGV4dGVybmFsIHR5cGVvZiA6IHQgLT4gdCA9IFwiY2FtbF9qc190eXBlb2ZcIlxuXG4gIGV4dGVybmFsIGluc3RhbmNlb2YgOiB0IC0+IHQgLT4gYm9vbCA9IFwiY2FtbF9qc19pbnN0YW5jZW9mXCJcblxuICBleHRlcm5hbCBkZWJ1Z2dlciA6IHVuaXQgLT4gdW5pdCA9IFwiZGVidWdnZXJcIlxuXG4gIGV4dGVybmFsIGdldCA6IHQgLT4gdCAtPiB0ID0gXCJjYW1sX2pzX2dldFwiXG5cbiAgZXh0ZXJuYWwgc2V0IDogdCAtPiB0IC0+IHQgLT4gdW5pdCA9IFwiY2FtbF9qc19zZXRcIlxuXG4gIGV4dGVybmFsIGRlbGV0ZSA6IHQgLT4gdCAtPiB1bml0ID0gXCJjYW1sX2pzX2RlbGV0ZVwiXG5cbiAgZXh0ZXJuYWwgY2FsbCA6IHQgLT4gdCAtPiB0IGFycmF5IC0+IHQgPSBcImNhbWxfanNfY2FsbFwiXG5cbiAgZXh0ZXJuYWwgZnVuX2NhbGwgOiB0IC0+IHQgYXJyYXkgLT4gdCA9IFwiY2FtbF9qc19mdW5fY2FsbFwiXG5cbiAgZXh0ZXJuYWwgbWV0aF9jYWxsIDogdCAtPiBzdHJpbmcgLT4gdCBhcnJheSAtPiB0ID0gXCJjYW1sX2pzX21ldGhfY2FsbFwiXG5cbiAgZXh0ZXJuYWwgbmV3X29iaiA6IHQgLT4gdCBhcnJheSAtPiB0ID0gXCJjYW1sX2pzX25ld1wiXG5cbiAgZXh0ZXJuYWwgbmV3X29ial9hcnIgOiB0IC0+IHQganNfYXJyYXkgLT4gdCA9IFwiY2FtbF9vanNfbmV3X2FyclwiXG5cbiAgZXh0ZXJuYWwgb2JqIDogKHN0cmluZyAqIHQpIGFycmF5IC0+IHQgPSBcImNhbWxfanNfb2JqZWN0XCJcblxuICBleHRlcm5hbCBlcXVhbHMgOiB0IC0+IHQgLT4gYm9vbCA9IFwiY2FtbF9qc19lcXVhbHNcIlxuXG4gIGV4dGVybmFsIHB1cmVfZXhwciA6ICh1bml0IC0+ICdhKSAtPiAnYSA9IFwiY2FtbF9qc19wdXJlX2V4cHJcIlxuXG4gIGV4dGVybmFsIGV2YWxfc3RyaW5nIDogc3RyaW5nIC0+ICdhID0gXCJjYW1sX2pzX2V2YWxfc3RyaW5nXCJcblxuICBleHRlcm5hbCBqc19leHByIDogc3RyaW5nIC0+ICdhID0gXCJjYW1sX2pzX2V4cHJcIlxuXG4gIGV4dGVybmFsIHB1cmVfanNfZXhwciA6IHN0cmluZyAtPiAnYSA9IFwiY2FtbF9wdXJlX2pzX2V4cHJcIlxuXG4gIGV4dGVybmFsIGNhbGxiYWNrIDogKCdiIC0+ICdhKSAtPiAoJ2IsICdhKSBtZXRoX2NhbGxiYWNrXG4gICAgPSBcImNhbWxfanNfd3JhcF9jYWxsYmFja191bnNhZmVcIlxuXG4gIGV4dGVybmFsIGNhbGxiYWNrX3dpdGhfYXJndW1lbnRzIDpcbiAgICAodCBqc19hcnJheSAtPiAnYikgLT4gKCdjLCB0IGpzX2FycmF5IC0+ICdiKSBtZXRoX2NhbGxiYWNrXG4gICAgPSBcImNhbWxfanNfd3JhcF9jYWxsYmFja19hcmd1bWVudHNcIlxuXG4gIGV4dGVybmFsIGNhbGxiYWNrX3dpdGhfYXJpdHkgOiBpbnQgLT4gKCdhIC0+ICdiKSAtPiAoJ2MsICdhIC0+ICdiKSBtZXRoX2NhbGxiYWNrXG4gICAgPSBcImNhbWxfanNfd3JhcF9jYWxsYmFja19zdHJpY3RcIlxuXG4gIGV4dGVybmFsIG1ldGhfY2FsbGJhY2sgOiAoJ2IgLT4gJ2EpIC0+ICgnYiwgJ2EpIG1ldGhfY2FsbGJhY2tcbiAgICA9IFwiY2FtbF9qc193cmFwX21ldGhfY2FsbGJhY2tfdW5zYWZlXCJcblxuICBleHRlcm5hbCBtZXRoX2NhbGxiYWNrX3dpdGhfYXJpdHkgOiBpbnQgLT4gKCdiIC0+ICdhKSAtPiAoJ2IsICdhKSBtZXRoX2NhbGxiYWNrXG4gICAgPSBcImNhbWxfanNfd3JhcF9tZXRoX2NhbGxiYWNrX3N0cmljdFwiXG5cbiAgZXh0ZXJuYWwgbWV0aF9jYWxsYmFja193aXRoX2FyZ3VtZW50cyA6XG4gICAgKCdiIC0+IHQganNfYXJyYXkgLT4gJ2EpIC0+ICgnYiwgdCBqc19hcnJheSAtPiAnYSkgbWV0aF9jYWxsYmFja1xuICAgID0gXCJjYW1sX2pzX3dyYXBfbWV0aF9jYWxsYmFja19hcmd1bWVudHNcIlxuXG4gIGV4dGVybmFsIHdyYXBfY2FsbGJhY2sgOiAoJ2EgLT4gJ2IpIC0+ICgnYywgJ2EgLT4gJ2IpIG1ldGhfY2FsbGJhY2tcbiAgICA9IFwiY2FtbF9qc193cmFwX2NhbGxiYWNrXCJcblxuICBleHRlcm5hbCB3cmFwX21ldGhfY2FsbGJhY2sgOiAoJ2EgLT4gJ2IpIC0+ICgnYSwgJ2IpIG1ldGhfY2FsbGJhY2tcbiAgICA9IFwiY2FtbF9qc193cmFwX21ldGhfY2FsbGJhY2tcIlxuZW5kXG5cbm1vZHVsZSBTeXMgPSBzdHJ1Y3RcbiAgdHlwZSAnYSBjYWxsYmFjayA9ICdhXG5cbiAgZXh0ZXJuYWwgY3JlYXRlX2ZpbGUgOiBuYW1lOnN0cmluZyAtPiBjb250ZW50OnN0cmluZyAtPiB1bml0ID0gXCJjYW1sX2NyZWF0ZV9maWxlXCJcblxuICBleHRlcm5hbCByZWFkX2ZpbGUgOiBuYW1lOnN0cmluZyAtPiBzdHJpbmcgPSBcImNhbWxfcmVhZF9maWxlX2NvbnRlbnRcIlxuXG4gIGV4dGVybmFsIHNldF9jaGFubmVsX291dHB1dCcgOiBvdXRfY2hhbm5lbCAtPiAoanNfc3RyaW5nOkpzLnQgLT4gdW5pdCkgY2FsbGJhY2sgLT4gdW5pdFxuICAgID0gXCJjYW1sX21sX3NldF9jaGFubmVsX291dHB1dFwiXG5cbiAgZXh0ZXJuYWwgc2V0X2NoYW5uZWxfaW5wdXQnIDogaW5fY2hhbm5lbCAtPiAodW5pdCAtPiBzdHJpbmcpIGNhbGxiYWNrIC0+IHVuaXRcbiAgICA9IFwiY2FtbF9tbF9zZXRfY2hhbm5lbF9yZWZpbGxcIlxuXG4gIGV4dGVybmFsIG1vdW50X3BvaW50IDogdW5pdCAtPiBzdHJpbmcgbGlzdCA9IFwiY2FtbF9saXN0X21vdW50X3BvaW50XCJcblxuICBleHRlcm5hbCBtb3VudF9hdXRvbG9hZCA6IHN0cmluZyAtPiAoc3RyaW5nIC0+IHN0cmluZyAtPiBzdHJpbmcgb3B0aW9uKSBjYWxsYmFjayAtPiB1bml0XG4gICAgPSBcImNhbWxfbW91bnRfYXV0b2xvYWRcIlxuXG4gIGV4dGVybmFsIHVubW91bnQgOiBzdHJpbmcgLT4gdW5pdCA9IFwiY2FtbF91bm1vdW50XCJcblxuICBtb2R1bGUgQ29uZmlnID0gc3RydWN0XG4gICAgZXh0ZXJuYWwgdXNlX2pzX3N0cmluZyA6IHVuaXQgLT4gYm9vbCA9IFwiY2FtbF9qc29vX2ZsYWdzX3VzZV9qc19zdHJpbmdcIlxuXG4gICAgZXh0ZXJuYWwgZWZmZWN0cyA6IHVuaXQgLT4gYm9vbCA9IFwiY2FtbF9qc29vX2ZsYWdzX2VmZmVjdHNcIlxuICBlbmRcblxuICBsZXQgdmVyc2lvbiA9IFJ1bnRpbWVfdmVyc2lvbi5zXG5cbiAgbGV0IGdpdF92ZXJzaW9uID0gUnVudGltZV92ZXJzaW9uLmdpdF92ZXJzaW9uXG5lbmRcblxubW9kdWxlIEVycm9yIDogc2lnXG4gIHR5cGUgdFxuXG4gIHZhbCByYWlzZV8gOiB0IC0+ICdhXG5cbiAgdmFsIGF0dGFjaF9qc19iYWNrdHJhY2UgOiBleG4gLT4gZm9yY2U6Ym9vbCAtPiBleG5cbiAgKCoqIEF0dGFjaCBhIEphdmFzU2NyaXB0IGVycm9yIHRvIGFuIE9DYW1sIGV4Y2VwdGlvbi4gIGlmIFtmb3JjZSA9IGZhbHNlXSBhbmQgYVxuICAgIEphdmFzU2NyaXB0IGVycm9yIGlzIGFscmVhZHkgYXR0YWNoZWQsIGl0IHdpbGwgZG8gbm90aGluZy4gVGhpcyBmdW5jdGlvbiBpcyB1c2VmdWwgdG9cbiAgICBzdG9yZSBhbmQgcmV0cmlldmUgaW5mb3JtYXRpb24gYWJvdXQgSmF2YVNjcmlwdCBzdGFjayB0cmFjZXMuXG5cbiAgICBBdHRhY2hpbmcgSmF2YXNTY3JpcHQgZXJyb3JzIHdpbGwgaGFwcGVuIGF1dG9tYXRpY2FsbHkgd2hlbiBjb21waWxpbmcgd2l0aFxuICAgIFstLWVuYWJsZSB3aXRoLWpzLWVycm9yXS4gKilcblxuICB2YWwgb2ZfZXhuIDogZXhuIC0+IHQgb3B0aW9uXG4gICgqKiBFeHRyYWN0IGEgSmF2YVNjcmlwdCBlcnJvciBhdHRhY2hlZCB0byBhbiBPQ2FtbCBleGNlcHRpb24sIGlmIGFueS4gIFRoaXMgaXMgdXNlZnVsIHRvXG4gICAgICBpbnNwZWN0IGFuIGV2ZW50dWFsIHN0YWNrIHN0cmFjZSwgZXNwZWNpYWxseSB3aGVuIHNvdXJjZW1hcCBpcyBlbmFibGVkLiAqKVxuXG4gIGV4Y2VwdGlvbiBFeG4gb2YgdFxuICAoKiogVGhlIFtFcnJvcl0gZXhjZXB0aW9uIHdyYXAgamF2YXNjcmlwdCBleGNlcHRpb25zIHdoZW4gY2F1Z2h0IGJ5IE9DYW1sIGNvZGUuXG4gICAgICBJbiBjYXNlIHRoZSBqYXZhc2NyaXB0IGV4Y2VwdGlvbiBpcyBub3QgYW4gaW5zdGFuY2Ugb2YgamF2YXNjcmlwdCBbRXJyb3JdLFxuICAgICAgaXQgd2lsbCBiZSBzZXJpYWxpemVkIGFuZCB3cmFwcGVkIGludG8gYSBbRmFpbHVyZV0gZXhjZXB0aW9uLlxuICAqKVxuZW5kID0gc3RydWN0XG4gIHR5cGUgdFxuXG4gIGV4Y2VwdGlvbiBFeG4gb2YgdFxuXG4gIGxldCBfID0gQ2FsbGJhY2sucmVnaXN0ZXJfZXhjZXB0aW9uIFwianNFcnJvclwiIChFeG4gKE9iai5tYWdpYyBbfHxdKSlcblxuICBsZXQgcmFpc2VfIDogdCAtPiAnYSA9IEpzLmpzX2V4cHIgXCIoZnVuY3Rpb24gKGV4bikgeyB0aHJvdyBleG4gfSlcIlxuXG4gIGV4dGVybmFsIG9mX2V4biA6IGV4biAtPiB0IG9wdGlvbiA9IFwiY2FtbF9qc19lcnJvcl9vcHRpb25fb2ZfZXhjZXB0aW9uXCJcblxuICBleHRlcm5hbCBhdHRhY2hfanNfYmFja3RyYWNlIDogZXhuIC0+IGZvcmNlOmJvb2wgLT4gZXhuID0gXCJjYW1sX2V4bl93aXRoX2pzX2JhY2t0cmFjZVwiXG5lbmRcblxuW0BAQG9jYW1sLndhcm5pbmcgXCItMzItNjBcIl1cblxubW9kdWxlIEZvcl9jb21wYXRpYmlsaXR5X29ubHkgPSBzdHJ1Y3RcbiAgKCogQWRkIHByaW1pdGl2ZXMgZm9yIGNvbXBhdGliaWxpdHkgcmVhc29ucy4gRXhpc3RpbmcgdXNlcnMgbWlnaHRcbiAgICAgZGVwZW5kIG9uIGl0IChlLmcuIGdlbl9qc19hcGkpLCB3ZSBkb250IHdhbnQgdGhlIG9jYW1sIGNvbXBpbGVyXG4gICAgIHRvIGNvbXBsYWluIGFib3V0IHRoZXNlcyBtaXNzaW5nIHByaW1pdGl2ZXMuICopXG5cbiAgZXh0ZXJuYWwgY2FtbF9qc19mcm9tX3N0cmluZyA6IHN0cmluZyAtPiBKcy50ID0gXCJjYW1sX2pzX2Zyb21fc3RyaW5nXCJcblxuICBleHRlcm5hbCBjYW1sX2pzX3RvX2J5dGVfc3RyaW5nIDogSnMudCAtPiBzdHJpbmcgPSBcImNhbWxfanNfdG9fYnl0ZV9zdHJpbmdcIlxuXG4gIGV4dGVybmFsIGNhbWxfanNfdG9fc3RyaW5nIDogSnMudCAtPiBzdHJpbmcgPSBcImNhbWxfanNfdG9fc3RyaW5nXCJcblxuICBleHRlcm5hbCBjYW1sX2xpc3Rfb2ZfanNfYXJyYXkgOiAnYSBKcy5qc19hcnJheSAtPiAnYSBsaXN0ID0gXCJjYW1sX2xpc3Rfb2ZfanNfYXJyYXlcIlxuXG4gIGV4dGVybmFsIGNhbWxfbGlzdF90b19qc19hcnJheSA6ICdhIGxpc3QgLT4gJ2EgSnMuanNfYXJyYXkgPSBcImNhbWxfbGlzdF90b19qc19hcnJheVwiXG5cbiAgZXh0ZXJuYWwgdmFyaWFibGUgOiBzdHJpbmcgLT4gJ2EgPSBcImNhbWxfanNfdmFyXCJcbmVuZFxuXG5tb2R1bGUgVHlwZWRfYXJyYXkgPSBzdHJ1Y3RcbiAgdHlwZSAoJ2EsICdiKSB0eXBlZEFycmF5ID0gSnMudFxuXG4gIHR5cGUgYXJyYXlCdWZmZXIgPSBKcy50XG5cbiAgdHlwZSB1aW50OEFycmF5ID0gSnMudFxuXG4gIGV4dGVybmFsIGtpbmQgOiAoJ2EsICdiKSB0eXBlZEFycmF5IC0+ICgnYSwgJ2IpIEJpZ2FycmF5LmtpbmRcbiAgICA9IFwiY2FtbF9iYV9raW5kX29mX3R5cGVkX2FycmF5XCJcblxuICBleHRlcm5hbCBmcm9tX2dlbmFycmF5IDpcbiAgICAoJ2EsICdiLCBCaWdhcnJheS5jX2xheW91dCkgQmlnYXJyYXkuR2VuYXJyYXkudCAtPiAoJ2EsICdiKSB0eXBlZEFycmF5XG4gICAgPSBcImNhbWxfYmFfdG9fdHlwZWRfYXJyYXlcIlxuXG4gIGV4dGVybmFsIHRvX2dlbmFycmF5IDpcbiAgICAoJ2EsICdiKSB0eXBlZEFycmF5IC0+ICgnYSwgJ2IsIEJpZ2FycmF5LmNfbGF5b3V0KSBCaWdhcnJheS5HZW5hcnJheS50XG4gICAgPSBcImNhbWxfYmFfZnJvbV90eXBlZF9hcnJheVwiXG5cbiAgbW9kdWxlIEJpZ3N0cmluZyA9IHN0cnVjdFxuICAgIHR5cGUgdCA9IChjaGFyLCBCaWdhcnJheS5pbnQ4X3Vuc2lnbmVkX2VsdCwgQmlnYXJyYXkuY19sYXlvdXQpIEJpZ2FycmF5LkFycmF5MS50XG5cbiAgICBleHRlcm5hbCB0b19hcnJheUJ1ZmZlciA6IHQgLT4gYXJyYXlCdWZmZXIgPSBcImJpZ3N0cmluZ190b19hcnJheV9idWZmZXJcIlxuXG4gICAgZXh0ZXJuYWwgdG9fdWludDhBcnJheSA6IHQgLT4gdWludDhBcnJheSA9IFwiYmlnc3RyaW5nX3RvX3R5cGVkX2FycmF5XCJcblxuICAgIGV4dGVybmFsIG9mX2FycmF5QnVmZmVyIDogYXJyYXlCdWZmZXIgLT4gdCA9IFwiYmlnc3RyaW5nX29mX2FycmF5X2J1ZmZlclwiXG5cbiAgICBleHRlcm5hbCBvZl91aW50OEFycmF5IDogdWludDhBcnJheSAtPiB0ID0gXCJiaWdzdHJpbmdfb2ZfdHlwZWRfYXJyYXlcIlxuICBlbmRcblxuICBleHRlcm5hbCBvZl91aW50OEFycmF5IDogdWludDhBcnJheSAtPiBzdHJpbmcgPSBcImNhbWxfc3RyaW5nX29mX2FycmF5XCJcbmVuZFxuXG5tb2R1bGUgSW50NjQgPSBzdHJ1Y3RcbiAgZXh0ZXJuYWwgY3JlYXRlX2ludDY0X2xvX21pX2hpIDogaW50IC0+IGludCAtPiBpbnQgLT4gSW50NjQudFxuICAgID0gXCJjYW1sX2ludDY0X2NyZWF0ZV9sb19taV9oaVwiXG5lbmRcbiJdfQ==