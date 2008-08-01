%% @copyright Geoff Cant
%% @author Geoff Cant <nem@erlang.geek.nz>
%% @version {@vsn}, {@date} {@time}
%% @doc 
%% @end
-module(rvre_tests).

-include_lib("eunit.hrl").

regression_1_test() ->
    ?assertMatch({match,{1,216,
                         "<iq type=\"result\" id=\"jcm_R_0\" from=\"localdomain\" to=\"[jcm_proxy]nonode@nohost/connection from [0.37.0]\"><session xmlns=\"http://jabber.org/protocol/connectionmanager\" id=\"jcm_S_0\">\n      <create/>\n    </session></iq>"},
                  {{4,101,
                    " type=\"result\" id=\"jcm_R_0\" from=\"localdomain\" to=\"[jcm_proxy]nonode@nohost/connection from [0.37.0]\""},
                   {106,106,
                    "<session xmlns=\"http://jabber.org/protocol/connectionmanager\" id=\"jcm_S_0\">\n      <create/>\n    </session>"}}},
                 rvre:match(<<"<iq type=\"result\" id=\"jcm_R_0\" from=\"localdomain\" to=\"[jcm_proxy]nonode@nohost/connection from [0.37.0]\"><session xmlns=\"http://jabber.org/protocol/connectionmanager\" id=\"jcm_S_0\">\n      <create/>\n    </session></iq>">>,"^[^>]*<iq([^>]*)>(.*)</iq>",[{subexpr,true}])
                ).
