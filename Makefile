all:
	rm -rf ebin/* src/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
	echo Done
doc_gen:
	echo glurk not implemented
test:
	rm -rf ebin/* src/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
#	Common service
	erlc -o ebin ../../services/common_src/src/*.erl;
#	Dbase service
	erlc -o ebin ../../services/dbase_src/src/*.erl;
#	Control service
	erlc -o ebin ../../services/control_src/src/*.erl;
#	application
	cp src/*.app ebin;
	erlc -o ebin src/*.erl;
	erl -pa ebin -s cluster_controller_app_tests start -sname control -setcookie app_test
