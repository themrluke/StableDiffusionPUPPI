// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    namespace nnet
    {
#pragma pack(1)
        template< typename T ,unsigned int N > struct array;
        template<> struct array<ap_fixed<8, 2, 0, 0, 0>, 1> {
            ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0> data[1];
           } ;

#pragma pack()
#pragma pack(1)
           template< typename T ,unsigned int N > struct array;
           template<> struct array<ap_fixed<8, 2, 0, 0, 0>, 4> {
               ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0> data[4];
              } ;

#pragma pack()
             };



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "input_images_V_data_0_V"
#define AUTOTB_TVIN_input_images_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_input_images_V_data_0_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V  "../tv/stream_size/stream_size_in_input_images_V_data_0_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V  "../tv/stream_size/stream_ingress_status_input_images_V_data_0_V.dat"
// wrapc file define: "pos_enc_main_V_data_0_V"
#define AUTOTB_TVIN_pos_enc_main_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_0_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V  "../tv/stream_size/stream_size_in_pos_enc_main_V_data_0_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V  "../tv/stream_size/stream_ingress_status_pos_enc_main_V_data_0_V.dat"
// wrapc file define: "pos_enc_main_V_data_1_V"
#define AUTOTB_TVIN_pos_enc_main_V_data_1_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_1_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_1_V  "../tv/stream_size/stream_size_in_pos_enc_main_V_data_1_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V  "../tv/stream_size/stream_ingress_status_pos_enc_main_V_data_1_V.dat"
// wrapc file define: "pos_enc_main_V_data_2_V"
#define AUTOTB_TVIN_pos_enc_main_V_data_2_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_2_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_2_V  "../tv/stream_size/stream_size_in_pos_enc_main_V_data_2_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V  "../tv/stream_size/stream_ingress_status_pos_enc_main_V_data_2_V.dat"
// wrapc file define: "pos_enc_main_V_data_3_V"
#define AUTOTB_TVIN_pos_enc_main_V_data_3_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_3_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_3_V  "../tv/stream_size/stream_size_in_pos_enc_main_V_data_3_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V  "../tv/stream_size/stream_ingress_status_pos_enc_main_V_data_3_V.dat"
// wrapc file define: "pos_enc_bottleneck_V_data_0_V"
#define AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_0_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V  "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_0_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V  "../tv/stream_size/stream_ingress_status_pos_enc_bottleneck_V_data_0_V.dat"
// wrapc file define: "pos_enc_bottleneck_V_data_1_V"
#define AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_1_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V  "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_1_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V  "../tv/stream_size/stream_ingress_status_pos_enc_bottleneck_V_data_1_V.dat"
// wrapc file define: "pos_enc_bottleneck_V_data_2_V"
#define AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_2_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V  "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_2_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V  "../tv/stream_size/stream_ingress_status_pos_enc_bottleneck_V_data_2_V.dat"
// wrapc file define: "pos_enc_bottleneck_V_data_3_V"
#define AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_3_V.dat"
#define WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V  "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_3_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V  "../tv/stream_size/stream_ingress_status_pos_enc_bottleneck_V_data_3_V.dat"
// wrapc file define: "layer48_out_V_data_0_V"
#define AUTOTB_TVOUT_layer48_out_V_data_0_V  "../tv/cdatafile/c.myproject.autotvout_layer48_out_V_data_0_V.dat"
#define AUTOTB_TVIN_layer48_out_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_layer48_out_V_data_0_V.dat"
#define WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V  "../tv/stream_size/stream_size_out_layer48_out_V_data_0_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_layer48_out_V_data_0_V  "../tv/stream_size/stream_egress_status_layer48_out_V_data_0_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "layer48_out_V_data_0_V"
#define AUTOTB_TVOUT_PC_layer48_out_V_data_0_V  "../tv/rtldatafile/rtl.myproject.autotvout_layer48_out_V_data_0_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_images_V_data_0_V_depth = 0;
			pos_enc_main_V_data_0_V_depth = 0;
			pos_enc_main_V_data_1_V_depth = 0;
			pos_enc_main_V_data_2_V_depth = 0;
			pos_enc_main_V_data_3_V_depth = 0;
			pos_enc_bottleneck_V_data_0_V_depth = 0;
			pos_enc_bottleneck_V_data_1_V_depth = 0;
			pos_enc_bottleneck_V_data_2_V_depth = 0;
			pos_enc_bottleneck_V_data_3_V_depth = 0;
			layer48_out_V_data_0_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{input_images_V_data_0_V " << input_images_V_data_0_V_depth << "}\n";
			total_list << "{pos_enc_main_V_data_0_V " << pos_enc_main_V_data_0_V_depth << "}\n";
			total_list << "{pos_enc_main_V_data_1_V " << pos_enc_main_V_data_1_V_depth << "}\n";
			total_list << "{pos_enc_main_V_data_2_V " << pos_enc_main_V_data_2_V_depth << "}\n";
			total_list << "{pos_enc_main_V_data_3_V " << pos_enc_main_V_data_3_V_depth << "}\n";
			total_list << "{pos_enc_bottleneck_V_data_0_V " << pos_enc_bottleneck_V_data_0_V_depth << "}\n";
			total_list << "{pos_enc_bottleneck_V_data_1_V " << pos_enc_bottleneck_V_data_1_V_depth << "}\n";
			total_list << "{pos_enc_bottleneck_V_data_2_V " << pos_enc_bottleneck_V_data_2_V_depth << "}\n";
			total_list << "{pos_enc_bottleneck_V_data_3_V " << pos_enc_bottleneck_V_data_3_V_depth << "}\n";
			total_list << "{layer48_out_V_data_0_V " << layer48_out_V_data_0_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_images_V_data_0_V_depth;
		int pos_enc_main_V_data_0_V_depth;
		int pos_enc_main_V_data_1_V_depth;
		int pos_enc_main_V_data_2_V_depth;
		int pos_enc_main_V_data_3_V_depth;
		int pos_enc_bottleneck_V_data_0_V_depth;
		int pos_enc_bottleneck_V_data_1_V_depth;
		int pos_enc_bottleneck_V_data_2_V_depth;
		int pos_enc_bottleneck_V_data_3_V_depth;
		int layer48_out_V_data_0_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void myproject (
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > (&input_images),
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > (&pos_enc_main),
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > (&pos_enc_bottleneck),
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > (&layer48_out));

void AESL_WRAP_myproject (
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > (&input_images),
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > (&pos_enc_main),
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > (&pos_enc_bottleneck),
hls::stream<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > (&layer48_out))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "input_images"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, AESL_token); // pop_size
			int aesl_tmp_13 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_13; i++)
			{
				input_images.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "pos_enc_main"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, AESL_token); // pop_size
			int aesl_tmp_16 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_16; i++)
			{
				pos_enc_main.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "pos_enc_bottleneck"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, AESL_token); // pop_size
			int aesl_tmp_19 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_19; i++)
			{
				pos_enc_bottleneck.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "layer48_out"
		std::vector<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > aesl_tmp_21;
		int aesl_tmp_22;
		int aesl_tmp_23 = 0;

		// read output stream size: "layer48_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, AESL_token); // pop_size
			aesl_tmp_22 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "layer48_out_V_data_0_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_layer48_out_V_data_0_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_layer48_out_V_data_0_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_layer48_out_V_data_0_V, AESL_token); // data

			std::vector<sc_bv<8> > layer48_out_V_data_0_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer48_out_V_data_0_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer48_out_V_data_0_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					layer48_out_V_data_0_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_layer48_out_V_data_0_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_layer48_out_V_data_0_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_22)
			{
				aesl_tmp_22 = i;
			}

			if (aesl_tmp_22 > 0 && aesl_tmp_21.size() < aesl_tmp_22)
			{
				int aesl_tmp_21_size = aesl_tmp_21.size();

				for (int tmp_aesl_tmp_21 = 0; tmp_aesl_tmp_21 < aesl_tmp_22 - aesl_tmp_21_size; tmp_aesl_tmp_21++)
				{
					nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > tmp;
					aesl_tmp_21.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: layer48_out_V_data_0_V
				{
					// bitslice(7, 0)
					// {
						// celement: layer48_out.V.data.V(7, 0)
						// {
							sc_lv<8>* layer48_out_V_data_V_lv0_0_0_1_lv1_0_0_2 = new sc_lv<8>[aesl_tmp_22 - aesl_tmp_23];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: layer48_out.V.data.V(7, 0)
						{
							// carray: (aesl_tmp_23) => (aesl_tmp_22 - 1) @ (1)
							for (int i_0 = aesl_tmp_23; i_0 <= aesl_tmp_22 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (2)
								for (int i_1 = 0; i_1 <= 0; i_1 += 2)
								{
									if (&(aesl_tmp_21[0].data[0]) != NULL) // check the null address if the c port is array or others
									{
										layer48_out_V_data_V_lv0_0_0_1_lv1_0_0_2[hls_map_index].range(7, 0) = sc_bv<8>(layer48_out_V_data_0_V_pc_buffer[hls_map_index].range(7, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: layer48_out.V.data.V(7, 0)
						{
							// carray: (aesl_tmp_23) => (aesl_tmp_22 - 1) @ (1)
							for (int i_0 = aesl_tmp_23; i_0 <= aesl_tmp_22 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (2)
								for (int i_1 = 0; i_1 <= 0; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_21[i_0].data[i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_21[0].data[0]
									// output_left_conversion : (aesl_tmp_21[i_0].data[i_1]).range()
									// output_type_conversion : (layer48_out_V_data_V_lv0_0_0_1_lv1_0_0_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(aesl_tmp_21[0].data[0]) != NULL) // check the null address if the c port is array or others
									{
										(aesl_tmp_21[i_0].data[i_1]).range() = (layer48_out_V_data_V_lv0_0_0_1_lv1_0_0_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "layer48_out"
		for (int i = 0; i < aesl_tmp_22; i++)
		{
			layer48_out.write(aesl_tmp_21[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input_images_V_data_0_V"
		char* tvin_input_images_V_data_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_images_V_data_0_V);
		char* wrapc_stream_size_in_input_images_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V);
		char* wrapc_stream_ingress_status_input_images_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V);

		// "pos_enc_main_V_data_0_V"
		char* tvin_pos_enc_main_V_data_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_main_V_data_0_V);
		char* wrapc_stream_size_in_pos_enc_main_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V);
		char* wrapc_stream_ingress_status_pos_enc_main_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V);

		// "pos_enc_main_V_data_1_V"
		char* tvin_pos_enc_main_V_data_1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_main_V_data_1_V);
		char* wrapc_stream_size_in_pos_enc_main_V_data_1_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_1_V);
		char* wrapc_stream_ingress_status_pos_enc_main_V_data_1_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V);

		// "pos_enc_main_V_data_2_V"
		char* tvin_pos_enc_main_V_data_2_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_main_V_data_2_V);
		char* wrapc_stream_size_in_pos_enc_main_V_data_2_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_2_V);
		char* wrapc_stream_ingress_status_pos_enc_main_V_data_2_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V);

		// "pos_enc_main_V_data_3_V"
		char* tvin_pos_enc_main_V_data_3_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_main_V_data_3_V);
		char* wrapc_stream_size_in_pos_enc_main_V_data_3_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_3_V);
		char* wrapc_stream_ingress_status_pos_enc_main_V_data_3_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V);

		// "pos_enc_bottleneck_V_data_0_V"
		char* tvin_pos_enc_bottleneck_V_data_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V);
		char* wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V);
		char* wrapc_stream_ingress_status_pos_enc_bottleneck_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V);

		// "pos_enc_bottleneck_V_data_1_V"
		char* tvin_pos_enc_bottleneck_V_data_1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V);
		char* wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V);
		char* wrapc_stream_ingress_status_pos_enc_bottleneck_V_data_1_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V);

		// "pos_enc_bottleneck_V_data_2_V"
		char* tvin_pos_enc_bottleneck_V_data_2_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V);
		char* wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V);
		char* wrapc_stream_ingress_status_pos_enc_bottleneck_V_data_2_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V);

		// "pos_enc_bottleneck_V_data_3_V"
		char* tvin_pos_enc_bottleneck_V_data_3_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V);
		char* wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V);
		char* wrapc_stream_ingress_status_pos_enc_bottleneck_V_data_3_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V);

		// "layer48_out_V_data_0_V"
		char* tvin_layer48_out_V_data_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_layer48_out_V_data_0_V);
		char* tvout_layer48_out_V_data_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_layer48_out_V_data_0_V);
		char* wrapc_stream_size_out_layer48_out_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V);
		char* wrapc_stream_egress_status_layer48_out_V_data_0_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_layer48_out_V_data_0_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "input_images"
		std::vector<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > aesl_tmp_12;
		int aesl_tmp_13 = 0;
		while (!input_images.empty())
		{
			aesl_tmp_12.push_back(input_images.read());
			aesl_tmp_13++;
		}

		// dump stream tvin: "pos_enc_main"
		std::vector<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > aesl_tmp_15;
		int aesl_tmp_16 = 0;
		while (!pos_enc_main.empty())
		{
			aesl_tmp_15.push_back(pos_enc_main.read());
			aesl_tmp_16++;
		}

		// dump stream tvin: "pos_enc_bottleneck"
		std::vector<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > aesl_tmp_18;
		int aesl_tmp_19 = 0;
		while (!pos_enc_bottleneck.empty())
		{
			aesl_tmp_18.push_back(pos_enc_bottleneck.read());
			aesl_tmp_19++;
		}

		// dump stream tvin: "layer48_out"
		std::vector<nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > aesl_tmp_21;
		int aesl_tmp_22 = 0;
		while (!layer48_out.empty())
		{
			aesl_tmp_21.push_back(layer48_out.read());
			aesl_tmp_22++;
		}

		// push back input stream: "input_images"
		for (int i = 0; i < aesl_tmp_13; i++)
		{
			input_images.write(aesl_tmp_12[i]);
		}

		// push back input stream: "pos_enc_main"
		for (int i = 0; i < aesl_tmp_16; i++)
		{
			pos_enc_main.write(aesl_tmp_15[i]);
		}

		// push back input stream: "pos_enc_bottleneck"
		for (int i = 0; i < aesl_tmp_19; i++)
		{
			pos_enc_bottleneck.write(aesl_tmp_18[i]);
		}

		// push back input stream: "layer48_out"
		for (int i = 0; i < aesl_tmp_22; i++)
		{
			layer48_out.write(aesl_tmp_21[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		myproject(input_images, pos_enc_main, pos_enc_bottleneck, layer48_out);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "input_images"
		int aesl_tmp_14 = input_images.size();

		// record input size to tv3: "pos_enc_main"
		int aesl_tmp_17 = pos_enc_main.size();

		// record input size to tv3: "pos_enc_bottleneck"
		int aesl_tmp_20 = pos_enc_bottleneck.size();

		// pop output stream: "layer48_out"
		int aesl_tmp_23 = aesl_tmp_22;
		aesl_tmp_22 = 0;
     aesl_tmp_21.clear();
		while (!layer48_out.empty())
		{
			aesl_tmp_21.push_back(layer48_out.read());
			aesl_tmp_22++;
		}

		// [[transaction]]
		sprintf(tvin_input_images_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_images_V_data_0_V, tvin_input_images_V_data_0_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, tvin_input_images_V_data_0_V);

		sc_bv<8>* input_images_V_data_0_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_13 - aesl_tmp_14];

		// RTL Name: input_images_V_data_0_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: input_images.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_13 - aesl_tmp_14 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_13 - aesl_tmp_14 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_12[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_12[0].data[0]
							// regulate_c_name       : input_images_V_data_V
							// input_type_conversion : (aesl_tmp_12[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_12[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> input_images_V_data_V_tmp_mem;
								input_images_V_data_V_tmp_mem = (aesl_tmp_12[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								input_images_V_data_0_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = input_images_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_13 - aesl_tmp_14; i++)
		{
			sprintf(tvin_input_images_V_data_0_V, "%s\n", (input_images_V_data_0_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_images_V_data_0_V, tvin_input_images_V_data_0_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_13 > aesl_tmp_14)
     {
		sc_int<32> stream_ingress_size_input_images_V_data_0_V = aesl_tmp_13;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, stream_ingress_size_input_images_V_data_0_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, "\n");

		for (int i = 0; i < aesl_tmp_13 - aesl_tmp_14; i++)
		{
			stream_ingress_size_input_images_V_data_0_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, stream_ingress_size_input_images_V_data_0_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_input_images_V_data_0_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, stream_ingress_size_input_images_V_data_0_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_13 - aesl_tmp_14, &tcl_file.input_images_V_data_0_V_depth);
		sprintf(tvin_input_images_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_images_V_data_0_V, tvin_input_images_V_data_0_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_images_V_data_0_V, tvin_input_images_V_data_0_V);

		// release memory allocation
		delete [] input_images_V_data_0_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input_images_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, wrapc_stream_size_in_input_images_V_data_0_V);
		sprintf(wrapc_stream_size_in_input_images_V_data_0_V, "%d\n", aesl_tmp_13 - aesl_tmp_14);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, wrapc_stream_size_in_input_images_V_data_0_V);
		sprintf(wrapc_stream_size_in_input_images_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_images_V_data_0_V, wrapc_stream_size_in_input_images_V_data_0_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_main_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_0_V, tvin_pos_enc_main_V_data_0_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, tvin_pos_enc_main_V_data_0_V);

		sc_bv<8>* pos_enc_main_V_data_0_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_16 - aesl_tmp_17];

		// RTL Name: pos_enc_main_V_data_0_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_main.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_16 - aesl_tmp_17 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_16 - aesl_tmp_17 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_15[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_15[0].data[0]
							// regulate_c_name       : pos_enc_main_V_data_V
							// input_type_conversion : (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_15[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_main_V_data_V_tmp_mem;
								pos_enc_main_V_data_V_tmp_mem = (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_main_V_data_0_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_main_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			sprintf(tvin_pos_enc_main_V_data_0_V, "%s\n", (pos_enc_main_V_data_0_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_0_V, tvin_pos_enc_main_V_data_0_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_16 > aesl_tmp_17)
     {
		sc_int<32> stream_ingress_size_pos_enc_main_V_data_0_V = aesl_tmp_16;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, stream_ingress_size_pos_enc_main_V_data_0_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, "\n");

		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			stream_ingress_size_pos_enc_main_V_data_0_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, stream_ingress_size_pos_enc_main_V_data_0_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_main_V_data_0_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, stream_ingress_size_pos_enc_main_V_data_0_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_16 - aesl_tmp_17, &tcl_file.pos_enc_main_V_data_0_V_depth);
		sprintf(tvin_pos_enc_main_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_0_V, tvin_pos_enc_main_V_data_0_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_0_V, tvin_pos_enc_main_V_data_0_V);

		// release memory allocation
		delete [] pos_enc_main_V_data_0_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, wrapc_stream_size_in_pos_enc_main_V_data_0_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_0_V, "%d\n", aesl_tmp_16 - aesl_tmp_17);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, wrapc_stream_size_in_pos_enc_main_V_data_0_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_0_V, wrapc_stream_size_in_pos_enc_main_V_data_0_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_main_V_data_1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_1_V, tvin_pos_enc_main_V_data_1_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, tvin_pos_enc_main_V_data_1_V);

		sc_bv<8>* pos_enc_main_V_data_1_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_16 - aesl_tmp_17];

		// RTL Name: pos_enc_main_V_data_1_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_main.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_16 - aesl_tmp_17 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_16 - aesl_tmp_17 - 1; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_15[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_15[0].data[0]
							// regulate_c_name       : pos_enc_main_V_data_V
							// input_type_conversion : (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_15[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_main_V_data_V_tmp_mem;
								pos_enc_main_V_data_V_tmp_mem = (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_main_V_data_1_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_main_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			sprintf(tvin_pos_enc_main_V_data_1_V, "%s\n", (pos_enc_main_V_data_1_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_1_V, tvin_pos_enc_main_V_data_1_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_16 > aesl_tmp_17)
     {
		sc_int<32> stream_ingress_size_pos_enc_main_V_data_1_V = aesl_tmp_16;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, stream_ingress_size_pos_enc_main_V_data_1_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, "\n");

		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			stream_ingress_size_pos_enc_main_V_data_1_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, stream_ingress_size_pos_enc_main_V_data_1_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_main_V_data_1_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, stream_ingress_size_pos_enc_main_V_data_1_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_16 - aesl_tmp_17, &tcl_file.pos_enc_main_V_data_1_V_depth);
		sprintf(tvin_pos_enc_main_V_data_1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_1_V, tvin_pos_enc_main_V_data_1_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_1_V, tvin_pos_enc_main_V_data_1_V);

		// release memory allocation
		delete [] pos_enc_main_V_data_1_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_1_V, wrapc_stream_size_in_pos_enc_main_V_data_1_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_1_V, "%d\n", aesl_tmp_16 - aesl_tmp_17);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_1_V, wrapc_stream_size_in_pos_enc_main_V_data_1_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_1_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_1_V, wrapc_stream_size_in_pos_enc_main_V_data_1_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_main_V_data_2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_2_V, tvin_pos_enc_main_V_data_2_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, tvin_pos_enc_main_V_data_2_V);

		sc_bv<8>* pos_enc_main_V_data_2_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_16 - aesl_tmp_17];

		// RTL Name: pos_enc_main_V_data_2_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_main.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_16 - aesl_tmp_17 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_16 - aesl_tmp_17 - 1; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_15[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_15[0].data[0]
							// regulate_c_name       : pos_enc_main_V_data_V
							// input_type_conversion : (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_15[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_main_V_data_V_tmp_mem;
								pos_enc_main_V_data_V_tmp_mem = (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_main_V_data_2_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_main_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			sprintf(tvin_pos_enc_main_V_data_2_V, "%s\n", (pos_enc_main_V_data_2_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_2_V, tvin_pos_enc_main_V_data_2_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_16 > aesl_tmp_17)
     {
		sc_int<32> stream_ingress_size_pos_enc_main_V_data_2_V = aesl_tmp_16;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, stream_ingress_size_pos_enc_main_V_data_2_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, "\n");

		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			stream_ingress_size_pos_enc_main_V_data_2_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, stream_ingress_size_pos_enc_main_V_data_2_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_main_V_data_2_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, stream_ingress_size_pos_enc_main_V_data_2_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_16 - aesl_tmp_17, &tcl_file.pos_enc_main_V_data_2_V_depth);
		sprintf(tvin_pos_enc_main_V_data_2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_2_V, tvin_pos_enc_main_V_data_2_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_2_V, tvin_pos_enc_main_V_data_2_V);

		// release memory allocation
		delete [] pos_enc_main_V_data_2_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_2_V, wrapc_stream_size_in_pos_enc_main_V_data_2_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_2_V, "%d\n", aesl_tmp_16 - aesl_tmp_17);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_2_V, wrapc_stream_size_in_pos_enc_main_V_data_2_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_2_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_2_V, wrapc_stream_size_in_pos_enc_main_V_data_2_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_main_V_data_3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_3_V, tvin_pos_enc_main_V_data_3_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, tvin_pos_enc_main_V_data_3_V);

		sc_bv<8>* pos_enc_main_V_data_3_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_16 - aesl_tmp_17];

		// RTL Name: pos_enc_main_V_data_3_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_main.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_16 - aesl_tmp_17 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_16 - aesl_tmp_17 - 1; i_0 += 1)
					{
						// carray: (3) => (3) @ (2)
						for (int i_1 = 3; i_1 <= 3; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_15[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_15[0].data[0]
							// regulate_c_name       : pos_enc_main_V_data_V
							// input_type_conversion : (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_15[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_main_V_data_V_tmp_mem;
								pos_enc_main_V_data_V_tmp_mem = (aesl_tmp_15[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_main_V_data_3_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_main_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			sprintf(tvin_pos_enc_main_V_data_3_V, "%s\n", (pos_enc_main_V_data_3_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_3_V, tvin_pos_enc_main_V_data_3_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_16 > aesl_tmp_17)
     {
		sc_int<32> stream_ingress_size_pos_enc_main_V_data_3_V = aesl_tmp_16;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, stream_ingress_size_pos_enc_main_V_data_3_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, "\n");

		for (int i = 0; i < aesl_tmp_16 - aesl_tmp_17; i++)
		{
			stream_ingress_size_pos_enc_main_V_data_3_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, stream_ingress_size_pos_enc_main_V_data_3_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_main_V_data_3_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, stream_ingress_size_pos_enc_main_V_data_3_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_16 - aesl_tmp_17, &tcl_file.pos_enc_main_V_data_3_V_depth);
		sprintf(tvin_pos_enc_main_V_data_3_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_main_V_data_3_V, tvin_pos_enc_main_V_data_3_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_main_V_data_3_V, tvin_pos_enc_main_V_data_3_V);

		// release memory allocation
		delete [] pos_enc_main_V_data_3_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_3_V, wrapc_stream_size_in_pos_enc_main_V_data_3_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_3_V, "%d\n", aesl_tmp_16 - aesl_tmp_17);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_3_V, wrapc_stream_size_in_pos_enc_main_V_data_3_V);
		sprintf(wrapc_stream_size_in_pos_enc_main_V_data_3_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_main_V_data_3_V, wrapc_stream_size_in_pos_enc_main_V_data_3_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_bottleneck_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V, tvin_pos_enc_bottleneck_V_data_0_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, tvin_pos_enc_bottleneck_V_data_0_V);

		sc_bv<8>* pos_enc_bottleneck_V_data_0_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_19 - aesl_tmp_20];

		// RTL Name: pos_enc_bottleneck_V_data_0_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_bottleneck.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_19 - aesl_tmp_20 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_19 - aesl_tmp_20 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_18[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_18[0].data[0]
							// regulate_c_name       : pos_enc_bottleneck_V_data_V
							// input_type_conversion : (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_18[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_bottleneck_V_data_V_tmp_mem;
								pos_enc_bottleneck_V_data_V_tmp_mem = (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_bottleneck_V_data_0_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_bottleneck_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			sprintf(tvin_pos_enc_bottleneck_V_data_0_V, "%s\n", (pos_enc_bottleneck_V_data_0_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V, tvin_pos_enc_bottleneck_V_data_0_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_19 > aesl_tmp_20)
     {
		sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_0_V = aesl_tmp_19;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, stream_ingress_size_pos_enc_bottleneck_V_data_0_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, "\n");

		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			stream_ingress_size_pos_enc_bottleneck_V_data_0_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, stream_ingress_size_pos_enc_bottleneck_V_data_0_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_0_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, stream_ingress_size_pos_enc_bottleneck_V_data_0_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_19 - aesl_tmp_20, &tcl_file.pos_enc_bottleneck_V_data_0_V_depth);
		sprintf(tvin_pos_enc_bottleneck_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V, tvin_pos_enc_bottleneck_V_data_0_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_0_V, tvin_pos_enc_bottleneck_V_data_0_V);

		// release memory allocation
		delete [] pos_enc_bottleneck_V_data_0_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V, "%d\n", aesl_tmp_19 - aesl_tmp_20);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_bottleneck_V_data_1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V, tvin_pos_enc_bottleneck_V_data_1_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, tvin_pos_enc_bottleneck_V_data_1_V);

		sc_bv<8>* pos_enc_bottleneck_V_data_1_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_19 - aesl_tmp_20];

		// RTL Name: pos_enc_bottleneck_V_data_1_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_bottleneck.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_19 - aesl_tmp_20 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_19 - aesl_tmp_20 - 1; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_18[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_18[0].data[0]
							// regulate_c_name       : pos_enc_bottleneck_V_data_V
							// input_type_conversion : (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_18[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_bottleneck_V_data_V_tmp_mem;
								pos_enc_bottleneck_V_data_V_tmp_mem = (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_bottleneck_V_data_1_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_bottleneck_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			sprintf(tvin_pos_enc_bottleneck_V_data_1_V, "%s\n", (pos_enc_bottleneck_V_data_1_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V, tvin_pos_enc_bottleneck_V_data_1_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_19 > aesl_tmp_20)
     {
		sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_1_V = aesl_tmp_19;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, stream_ingress_size_pos_enc_bottleneck_V_data_1_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, "\n");

		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			stream_ingress_size_pos_enc_bottleneck_V_data_1_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, stream_ingress_size_pos_enc_bottleneck_V_data_1_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_1_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, stream_ingress_size_pos_enc_bottleneck_V_data_1_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_19 - aesl_tmp_20, &tcl_file.pos_enc_bottleneck_V_data_1_V_depth);
		sprintf(tvin_pos_enc_bottleneck_V_data_1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V, tvin_pos_enc_bottleneck_V_data_1_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_1_V, tvin_pos_enc_bottleneck_V_data_1_V);

		// release memory allocation
		delete [] pos_enc_bottleneck_V_data_1_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V, "%d\n", aesl_tmp_19 - aesl_tmp_20);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_bottleneck_V_data_2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V, tvin_pos_enc_bottleneck_V_data_2_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, tvin_pos_enc_bottleneck_V_data_2_V);

		sc_bv<8>* pos_enc_bottleneck_V_data_2_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_19 - aesl_tmp_20];

		// RTL Name: pos_enc_bottleneck_V_data_2_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_bottleneck.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_19 - aesl_tmp_20 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_19 - aesl_tmp_20 - 1; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_18[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_18[0].data[0]
							// regulate_c_name       : pos_enc_bottleneck_V_data_V
							// input_type_conversion : (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_18[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_bottleneck_V_data_V_tmp_mem;
								pos_enc_bottleneck_V_data_V_tmp_mem = (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_bottleneck_V_data_2_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_bottleneck_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			sprintf(tvin_pos_enc_bottleneck_V_data_2_V, "%s\n", (pos_enc_bottleneck_V_data_2_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V, tvin_pos_enc_bottleneck_V_data_2_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_19 > aesl_tmp_20)
     {
		sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_2_V = aesl_tmp_19;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, stream_ingress_size_pos_enc_bottleneck_V_data_2_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, "\n");

		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			stream_ingress_size_pos_enc_bottleneck_V_data_2_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, stream_ingress_size_pos_enc_bottleneck_V_data_2_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_2_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, stream_ingress_size_pos_enc_bottleneck_V_data_2_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_19 - aesl_tmp_20, &tcl_file.pos_enc_bottleneck_V_data_2_V_depth);
		sprintf(tvin_pos_enc_bottleneck_V_data_2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V, tvin_pos_enc_bottleneck_V_data_2_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_2_V, tvin_pos_enc_bottleneck_V_data_2_V);

		// release memory allocation
		delete [] pos_enc_bottleneck_V_data_2_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V, "%d\n", aesl_tmp_19 - aesl_tmp_20);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V);

		// [[transaction]]
		sprintf(tvin_pos_enc_bottleneck_V_data_3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V, tvin_pos_enc_bottleneck_V_data_3_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, tvin_pos_enc_bottleneck_V_data_3_V);

		sc_bv<8>* pos_enc_bottleneck_V_data_3_V_tvin_wrapc_buffer = new sc_bv<8>[aesl_tmp_19 - aesl_tmp_20];

		// RTL Name: pos_enc_bottleneck_V_data_3_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: pos_enc_bottleneck.V.data.V(7, 0)
				{
					// carray: (0) => (aesl_tmp_19 - aesl_tmp_20 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_19 - aesl_tmp_20 - 1; i_0 += 1)
					{
						// carray: (3) => (3) @ (2)
						for (int i_1 = 3; i_1 <= 3; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_18[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_18[0].data[0]
							// regulate_c_name       : pos_enc_bottleneck_V_data_V
							// input_type_conversion : (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_18[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> pos_enc_bottleneck_V_data_V_tmp_mem;
								pos_enc_bottleneck_V_data_V_tmp_mem = (aesl_tmp_18[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								pos_enc_bottleneck_V_data_3_V_tvin_wrapc_buffer[hls_map_index].range(7, 0) = pos_enc_bottleneck_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			sprintf(tvin_pos_enc_bottleneck_V_data_3_V, "%s\n", (pos_enc_bottleneck_V_data_3_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V, tvin_pos_enc_bottleneck_V_data_3_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_19 > aesl_tmp_20)
     {
		sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_3_V = aesl_tmp_19;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, stream_ingress_size_pos_enc_bottleneck_V_data_3_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, "\n");

		for (int i = 0; i < aesl_tmp_19 - aesl_tmp_20; i++)
		{
			stream_ingress_size_pos_enc_bottleneck_V_data_3_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, stream_ingress_size_pos_enc_bottleneck_V_data_3_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_pos_enc_bottleneck_V_data_3_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, stream_ingress_size_pos_enc_bottleneck_V_data_3_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_19 - aesl_tmp_20, &tcl_file.pos_enc_bottleneck_V_data_3_V_depth);
		sprintf(tvin_pos_enc_bottleneck_V_data_3_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V, tvin_pos_enc_bottleneck_V_data_3_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_pos_enc_bottleneck_V_data_3_V, tvin_pos_enc_bottleneck_V_data_3_V);

		// release memory allocation
		delete [] pos_enc_bottleneck_V_data_3_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V, "%d\n", aesl_tmp_19 - aesl_tmp_20);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V);
		sprintf(wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V, wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V);

		// [[transaction]]
		sprintf(tvout_layer48_out_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_layer48_out_V_data_0_V, tvout_layer48_out_V_data_0_V);

		sc_bv<8>* layer48_out_V_data_0_V_tvout_wrapc_buffer = new sc_bv<8>[aesl_tmp_22 - aesl_tmp_23];

		// RTL Name: layer48_out_V_data_0_V
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: layer48_out.V.data.V(7, 0)
				{
					// carray: (aesl_tmp_23) => (aesl_tmp_22 - 1) @ (1)
					for (int i_0 = aesl_tmp_23; i_0 <= aesl_tmp_22 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_21[i_0].data[i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_21[0].data[0]
							// regulate_c_name       : layer48_out_V_data_V
							// input_type_conversion : (aesl_tmp_21[i_0].data[i_1]).range().to_string(SC_BIN).c_str()
							if (&(aesl_tmp_21[0].data[0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<8> layer48_out_V_data_V_tmp_mem;
								layer48_out_V_data_V_tmp_mem = (aesl_tmp_21[i_0].data[i_1]).range().to_string(SC_BIN).c_str();
								layer48_out_V_data_0_V_tvout_wrapc_buffer[hls_map_index].range(7, 0) = layer48_out_V_data_V_tmp_mem.range(7, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_22 - aesl_tmp_23; i++)
		{
			sprintf(tvout_layer48_out_V_data_0_V, "%s\n", (layer48_out_V_data_0_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_layer48_out_V_data_0_V, tvout_layer48_out_V_data_0_V);
		}

		tcl_file.set_num(aesl_tmp_22 - aesl_tmp_23, &tcl_file.layer48_out_V_data_0_V_depth);
		sprintf(tvout_layer48_out_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_layer48_out_V_data_0_V, tvout_layer48_out_V_data_0_V);

		// release memory allocation
		delete [] layer48_out_V_data_0_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_layer48_out_V_data_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, wrapc_stream_size_out_layer48_out_V_data_0_V);
		sprintf(wrapc_stream_size_out_layer48_out_V_data_0_V, "%d\n", aesl_tmp_22 - aesl_tmp_23);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, wrapc_stream_size_out_layer48_out_V_data_0_V);
		sprintf(wrapc_stream_size_out_layer48_out_V_data_0_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer48_out_V_data_0_V, wrapc_stream_size_out_layer48_out_V_data_0_V);

		// push back output stream: "layer48_out"
		for (int i = 0; i < aesl_tmp_22; i++)
		{
			layer48_out.write(aesl_tmp_21[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_images_V_data_0_V"
		delete [] tvin_input_images_V_data_0_V;
		delete [] wrapc_stream_size_in_input_images_V_data_0_V;
		// release memory allocation: "pos_enc_main_V_data_0_V"
		delete [] tvin_pos_enc_main_V_data_0_V;
		delete [] wrapc_stream_size_in_pos_enc_main_V_data_0_V;
		// release memory allocation: "pos_enc_main_V_data_1_V"
		delete [] tvin_pos_enc_main_V_data_1_V;
		delete [] wrapc_stream_size_in_pos_enc_main_V_data_1_V;
		// release memory allocation: "pos_enc_main_V_data_2_V"
		delete [] tvin_pos_enc_main_V_data_2_V;
		delete [] wrapc_stream_size_in_pos_enc_main_V_data_2_V;
		// release memory allocation: "pos_enc_main_V_data_3_V"
		delete [] tvin_pos_enc_main_V_data_3_V;
		delete [] wrapc_stream_size_in_pos_enc_main_V_data_3_V;
		// release memory allocation: "pos_enc_bottleneck_V_data_0_V"
		delete [] tvin_pos_enc_bottleneck_V_data_0_V;
		delete [] wrapc_stream_size_in_pos_enc_bottleneck_V_data_0_V;
		// release memory allocation: "pos_enc_bottleneck_V_data_1_V"
		delete [] tvin_pos_enc_bottleneck_V_data_1_V;
		delete [] wrapc_stream_size_in_pos_enc_bottleneck_V_data_1_V;
		// release memory allocation: "pos_enc_bottleneck_V_data_2_V"
		delete [] tvin_pos_enc_bottleneck_V_data_2_V;
		delete [] wrapc_stream_size_in_pos_enc_bottleneck_V_data_2_V;
		// release memory allocation: "pos_enc_bottleneck_V_data_3_V"
		delete [] tvin_pos_enc_bottleneck_V_data_3_V;
		delete [] wrapc_stream_size_in_pos_enc_bottleneck_V_data_3_V;
		// release memory allocation: "layer48_out_V_data_0_V"
		delete [] tvout_layer48_out_V_data_0_V;
		delete [] tvin_layer48_out_V_data_0_V;
		delete [] wrapc_stream_size_out_layer48_out_V_data_0_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

