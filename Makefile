sim: main_moments.cpp solve_odes.cpp find_clusters.cpp find_cluster_moments.cpp
			g++ -o sim -O3  main_moments.cpp solve_odes.cpp find_clusters.cpp find_cluster_moments.cpp -I.


sim1: main_moments.cpp solve_odes_new.cpp fire_pulse.cpp scramble.cpp absorb.cpp find_clusters.cpp find_cluster_moments.cpp
			g++ -o sim1 -O3 main_moments.cpp solve_odes_new.cpp fire_pulse.cpp scramble.cpp absorb.cpp find_clusters.cpp find_cluster_moments.cpp -I.


clusters: main_clusters.cpp solve_odes.cpp find_and_write_clusters.cpp 
			g++ -o clus -O3  main_clusters.cpp solve_odes.cpp find_and_write_clusters.cpp  -I.


count: main_count_firing_rates.cpp count_firing_rates.cpp find_clusters.cpp find_cluster_moments.cpp 
			g++ -o count main_count_firing_rates.cpp count_firing_rates.cpp find_clusters.cpp find_cluster_moments.cpp  -I.


ens: main_ensemble.cpp solve_odes_ensemble.cpp find_clusters.cpp find_cluster_moments.cpp
			g++ -o ens -O3  main_ensemble.cpp solve_odes_ensemble.cpp find_clusters.cpp find_cluster_moments.cpp -I.


ens1: main_ensemble1.cpp solve_odes_ensemble1.cpp find_clusters.cpp find_cluster_moments.cpp
			g++ -o ens1 main_ensemble1.cpp solve_odes_ensemble1.cpp find_clusters.cpp find_cluster_moments.cpp -I.


ensfe: main_ensemble_forward_euler.cpp solve_odes_forward_euler.cpp find_cluster_moments.cpp
			g++ -o ensfe main_ensemble_forward_euler.cpp solve_odes_forward_euler.cpp find_cluster_moments.cpp -I.


cleanens: main_clean_ensemble.cpp solve_odes_ensemble1.cpp find_clusters.cpp bin_clusters.cpp find_cluster_moments.cpp
			g++ -o cleanens main_clean_ensemble.cpp solve_odes_ensemble1.cpp find_clusters.cpp bin_clusters.cpp find_cluster_moments.cpp -I.


hist: main_histogram.cpp solve_odes.cpp make_voltage_histogram.cpp
			g++ -o hist main_histogram.cpp solve_odes.cpp make_voltage_histogram.cpp -I.


varyk: main_vary_k.cpp solve_odes_vary_k.cpp find_clusters.cpp find_cluster_moments.cpp
			g++ -o varyk main_vary_k.cpp solve_odes_vary_k.cpp find_clusters.cpp find_cluster_moments.cpp -I.


conc: main_concave.cpp solve_odes.cpp find_clusters.cpp find_cluster_moments.cpp
			g++ -o conc main_concave.cpp solve_odes.cpp find_clusters.cpp find_cluster_moments.cpp -I.


all: main_ensemble_all_in_one.cpp
			g++ -o all main_ensemble_all_in_one.cpp -I.


lc: main_light_cone.cpp solve_odes.cpp find_light_cone.cpp
			g++ -o lc -O3  main_light_cone.cpp solve_odes.cpp find_light_cone.cpp -I.
