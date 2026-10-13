set -e
set -x

rex -dp_comm_string 1,labsspc06,41897 -V -m -pd -I# -tech /opt/GPDK045/gpdk045_v_6_0/qrc/rcworst -map p2elayermapfile -wee p2elayermapfile -N NET -e2 -Ply np_rpoly_0conn -er np_rmetal1_0conn,metal1_conn.den -rP res.mod -mp mprexajC8Qkh np_rmetal1_0conn::metal1_conn_cut - rcont_0poly,1,T rcont_0pdiff_metal1_0conn_pdiff_0conn,1,t rcont_0ndiff_metal1_0conn_ndiff_0conn,1,t - L1T0,1,I

rex -dp_comm_string 2,labsspc06,41897 -V -m -pd -I# -tech /opt/GPDK045/gpdk045_v_6_0/qrc/rcworst -map p2elayermapfile -wee p2elayermapfile -N NET -e2 -Ply np_rpoly_0conn -er np_rmetal1_0conn,metal1_conn.den -rP res.mod -mp mprexan6NwJT np_rpoly_0conn::poly_conn_cut - _0pmos1v_mgvia,1,z _0nmos1v_mgvia,1,z rcont_0poly,1,x

rexmerge -V -N NET -n mprexan6NwJT,mprexajC8Qkh -b np_rpoly_0conn::Rnp_rpoly_0conn.dev2,np_rmetal1_0conn::Rnp_rmetal1_0conn.dev2 -l ,L1T0 np_rpoly_0conn.res,np_rmetal1_0conn.res

