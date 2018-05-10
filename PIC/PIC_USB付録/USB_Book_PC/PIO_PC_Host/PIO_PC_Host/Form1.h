#pragma once

/********************************************************************
* 汎用PIOのPCホストプログラム
*********************************************************************/
//Includes
#include <windows.h>	//Definitions for various common and not so common types like DWORD, PCHAR, HANDLE, etc.
#include <Dbt.h>		//Need this for definitions of WM_DEVICECHANGE messages
#include "mpusbapi.h"	//Make sure this header file is located in your project directory.
#include <sstream>
/*** USB VID,PID定義 ***/
#define DeviceVID_PID "vid_04d8&pid_000c"

/*******************************************************************
*  プログラム本体 
*******************************************************************/

namespace PIO_PC_Host {
	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

	using namespace System::Threading;	
	using namespace System::Runtime::InteropServices;  //Need this to support "unmanaged" code.

	/*** 汎用USBドライバ　MCHPUSBのDLLファイルインクルード ***/
	#define	Seeifdef	Unicode

	//See the mpusbapi.dll source code (_mpusbapi.cpp) for API related documentation for these functions.
	//The source code is in the MCHPFSUSB vX.X distributions.
	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBGetDLLVersion", CallingConvention=CallingConvention::Cdecl)] 
	extern "C" DWORD MPUSBGetDLLVersion(void);
	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBGetDeviceCount", CallingConvention=CallingConvention::Cdecl)] 
	extern "C" DWORD MPUSBGetDeviceCount(PCHAR pVID_PID);
	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBOpen", CallingConvention=CallingConvention::Cdecl)]
	extern "C" HANDLE MPUSBOpen(DWORD instance,	//  Input
										PCHAR pVID_PID,	// Input
										PCHAR pEP,		// Input
										DWORD dwDir,	// Input
										DWORD dwReserved);// Input

	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBClose", CallingConvention=CallingConvention::Cdecl)] 
	extern "C" BOOL MPUSBClose(HANDLE handle);	//Input
	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBRead", CallingConvention=CallingConvention::Cdecl)] 
	extern "C" DWORD MPUSBRead(HANDLE handle,	// Input
										PVOID pData,	// Output
										DWORD dwLen,	// Input
										PDWORD pLength,	// Output
										DWORD dwMilliseconds);// Input

	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBWrite", CallingConvention=CallingConvention::Cdecl)] 
	extern "C" DWORD MPUSBWrite(HANDLE handle,	// Input
										PVOID pData,	// Output
										DWORD dwLen,	// Input
										PDWORD pLength,	// Output
										DWORD dwMilliseconds);// Input
	[DllImport("MPUSBAPI.dll" , EntryPoint="_MPUSBReadInt", CallingConvention=CallingConvention::Cdecl)] 
	extern "C" DWORD MPUSBReadInt(HANDLE handle,	// Input
										PVOID pData,	// Output
										DWORD dwLen,	// Input
										PDWORD pLength,	// Output
										DWORD dwMilliseconds);// Input

	//Need this function for receiving all of the WM_DEVICECHANGE messages.  See MSDN documentation for
	//description of what this function does/how to use it. Note: name is remapped "RegisterDeviceNotificationUM" to
	//avoid possible build error conflicts.
	[DllImport("user32.dll" , CharSet = CharSet::Seeifdef, EntryPoint="RegisterDeviceNotification", CallingConvention=CallingConvention::Winapi)]					
	extern "C" HDEVNOTIFY WINAPI RegisterDeviceNotificationUM(
		HANDLE hRecipient,
		LPVOID NotificationFilter,
		DWORD Flags);




	//----------------Global variables used in this application--------------------------------
	HANDLE  EP1INHandle = INVALID_HANDLE_VALUE;
	HANDLE  EP1OUTHandle = INVALID_HANDLE_VALUE;
	unsigned int ADCValue = 0;
	BOOL AttachedState = FALSE;		//Need to keep track of the USB device attachment status for proper plug and play operation.
	unsigned char Buffer [64];
	DWORD ActualLength;

	/// <summary>
	/// Form1 の概要
	/// </summary>
	public ref class Form1 : public System::Windows::Forms::Form
	{
	public:
		Form1(void)
		{
			InitializeComponent();
			//
			//TODO: ここにコンストラクター コードを追加します
			//
			//Globally Unique Identifier (GUID). Windows uses GUIDs to identify things.  
			GUID InterfaceClassGuid = {0xa5dcbf10, 0x6530, 0x11d2, 0x90, 0x1F, 0x00, 0xC0, 0x4F, 0xB9, 0x51, 0xED}; //Globally Unique Identifier (GUID) for USB peripheral devices

			//Register for WM_DEVICECHANGE notifications:
			DEV_BROADCAST_DEVICEINTERFACE MyDeviceBroadcastHeader;// = new DEV_BROADCAST_HDR;
			MyDeviceBroadcastHeader.dbcc_devicetype = DBT_DEVTYP_DEVICEINTERFACE;
			MyDeviceBroadcastHeader.dbcc_size = sizeof(DEV_BROADCAST_DEVICEINTERFACE);
			MyDeviceBroadcastHeader.dbcc_reserved = 0;	//Reserved says not to use...
			MyDeviceBroadcastHeader.dbcc_classguid = InterfaceClassGuid;
			RegisterDeviceNotificationUM((HANDLE)this->Handle, &MyDeviceBroadcastHeader, DEVICE_NOTIFY_WINDOW_HANDLE);
		}

	protected:
		/// <summary>
		/// 使用中のリソースをすべてクリーンアップします。
		/// </summary>
		~Form1()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::Button^  button1;
	protected: 
	private: System::Windows::Forms::TextBox^  textBox1;
	private: System::Windows::Forms::Button^  button2;
	private: System::Windows::Forms::Button^  button3;
	private: System::Windows::Forms::Button^  button4;
	private: System::Windows::Forms::Button^  button5;
	private: System::Windows::Forms::Button^  button6;
	private: System::Windows::Forms::TextBox^  textBox2;
	private: System::Windows::Forms::TextBox^  textBox3;
	private: System::Windows::Forms::TextBox^  textBox4;
	private: System::Windows::Forms::TextBox^  textBox5;
	private: System::Windows::Forms::TextBox^  textBox6;
	private: System::Windows::Forms::TextBox^  textBox7;
	private: System::Windows::Forms::TextBox^  textBox8;
	private: System::Windows::Forms::Label^  label1;
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Label^  label3;
	private: System::Windows::Forms::Timer^  timer1;
	private: System::Windows::Forms::Button^  button7;
	private: System::Windows::Forms::Label^  label4;
	private: System::Windows::Forms::Label^  label5;
	private: System::Windows::Forms::Label^  label6;

	private: System::ComponentModel::IContainer^  components;

	private:
		/// <summary>
		/// 必要なデザイナー変数です。
		/// </summary>


#pragma region Windows Form Designer generated code
		/// <summary>
		/// デザイナー サポートに必要なメソッドです。このメソッドの内容を
		/// コード エディターで変更しないでください。
		/// </summary>
		void InitializeComponent(void)
		{
			this->components = (gcnew System::ComponentModel::Container());
			this->button1 = (gcnew System::Windows::Forms::Button());
			this->textBox1 = (gcnew System::Windows::Forms::TextBox());
			this->button2 = (gcnew System::Windows::Forms::Button());
			this->button3 = (gcnew System::Windows::Forms::Button());
			this->button4 = (gcnew System::Windows::Forms::Button());
			this->button5 = (gcnew System::Windows::Forms::Button());
			this->button6 = (gcnew System::Windows::Forms::Button());
			this->textBox2 = (gcnew System::Windows::Forms::TextBox());
			this->textBox3 = (gcnew System::Windows::Forms::TextBox());
			this->textBox4 = (gcnew System::Windows::Forms::TextBox());
			this->textBox5 = (gcnew System::Windows::Forms::TextBox());
			this->textBox6 = (gcnew System::Windows::Forms::TextBox());
			this->textBox7 = (gcnew System::Windows::Forms::TextBox());
			this->textBox8 = (gcnew System::Windows::Forms::TextBox());
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->timer1 = (gcnew System::Windows::Forms::Timer(this->components));
			this->button7 = (gcnew System::Windows::Forms::Button());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->SuspendLayout();
			// 
			// button1
			// 
			this->button1->BackColor = System::Drawing::Color::Salmon;
			this->button1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button1->Location = System::Drawing::Point(40, 25);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(70, 40);
			this->button1->TabIndex = 0;
			this->button1->Text = L"接続";
			this->button1->UseVisualStyleBackColor = false;
			this->button1->Click += gcnew System::EventHandler(this, &Form1::button1_Click);
			// 
			// textBox1
			// 
			this->textBox1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 11.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox1->Location = System::Drawing::Point(116, 32);
			this->textBox1->Name = L"textBox1";
			this->textBox1->Size = System::Drawing::Size(143, 22);
			this->textBox1->TabIndex = 1;
			this->textBox1->Text = L"Click Button";
			// 
			// button2
			// 
			this->button2->BackColor = System::Drawing::Color::Green;
			this->button2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button2->Location = System::Drawing::Point(40, 100);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(55, 30);
			this->button2->TabIndex = 2;
			this->button2->Text = L"DO1";
			this->button2->UseVisualStyleBackColor = false;
			this->button2->Click += gcnew System::EventHandler(this, &Form1::button2_Click);
			// 
			// button3
			// 
			this->button3->BackColor = System::Drawing::Color::Green;
			this->button3->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button3->Location = System::Drawing::Point(100, 100);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(55, 30);
			this->button3->TabIndex = 3;
			this->button3->Text = L"DO2";
			this->button3->UseVisualStyleBackColor = false;
			this->button3->Click += gcnew System::EventHandler(this, &Form1::button3_Click);
			// 
			// button4
			// 
			this->button4->BackColor = System::Drawing::Color::Green;
			this->button4->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button4->Location = System::Drawing::Point(160, 100);
			this->button4->Name = L"button4";
			this->button4->Size = System::Drawing::Size(55, 30);
			this->button4->TabIndex = 4;
			this->button4->Text = L"DO3";
			this->button4->UseVisualStyleBackColor = false;
			this->button4->Click += gcnew System::EventHandler(this, &Form1::button4_Click);
			// 
			// button5
			// 
			this->button5->BackColor = System::Drawing::Color::Green;
			this->button5->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button5->Location = System::Drawing::Point(220, 100);
			this->button5->Name = L"button5";
			this->button5->Size = System::Drawing::Size(55, 30);
			this->button5->TabIndex = 5;
			this->button5->Text = L"DO4";
			this->button5->UseVisualStyleBackColor = false;
			this->button5->Click += gcnew System::EventHandler(this, &Form1::button5_Click);
			// 
			// button6
			// 
			this->button6->BackColor = System::Drawing::Color::Green;
			this->button6->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button6->Location = System::Drawing::Point(280, 100);
			this->button6->Name = L"button6";
			this->button6->Size = System::Drawing::Size(55, 30);
			this->button6->TabIndex = 6;
			this->button6->Text = L"DO5";
			this->button6->UseVisualStyleBackColor = false;
			this->button6->Click += gcnew System::EventHandler(this, &Form1::button6_Click);
			// 
			// textBox2
			// 
			this->textBox2->BackColor = System::Drawing::Color::YellowGreen;
			this->textBox2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox2->Location = System::Drawing::Point(40, 150);
			this->textBox2->Name = L"textBox2";
			this->textBox2->Size = System::Drawing::Size(55, 26);
			this->textBox2->TabIndex = 7;
			this->textBox2->Text = L"DI1";
			this->textBox2->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox3
			// 
			this->textBox3->BackColor = System::Drawing::Color::YellowGreen;
			this->textBox3->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox3->Location = System::Drawing::Point(100, 150);
			this->textBox3->Name = L"textBox3";
			this->textBox3->Size = System::Drawing::Size(55, 26);
			this->textBox3->TabIndex = 8;
			this->textBox3->Text = L"DI2";
			this->textBox3->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox4
			// 
			this->textBox4->BackColor = System::Drawing::Color::YellowGreen;
			this->textBox4->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox4->Location = System::Drawing::Point(160, 150);
			this->textBox4->Name = L"textBox4";
			this->textBox4->Size = System::Drawing::Size(55, 26);
			this->textBox4->TabIndex = 9;
			this->textBox4->Text = L"DI3";
			this->textBox4->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox5
			// 
			this->textBox5->BackColor = System::Drawing::Color::YellowGreen;
			this->textBox5->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox5->Location = System::Drawing::Point(220, 150);
			this->textBox5->Name = L"textBox5";
			this->textBox5->Size = System::Drawing::Size(55, 26);
			this->textBox5->TabIndex = 10;
			this->textBox5->Text = L"DI4";
			this->textBox5->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox6
			// 
			this->textBox6->BackColor = System::Drawing::Color::PaleTurquoise;
			this->textBox6->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox6->Location = System::Drawing::Point(40, 211);
			this->textBox6->Name = L"textBox6";
			this->textBox6->Size = System::Drawing::Size(80, 26);
			this->textBox6->TabIndex = 11;
			this->textBox6->Text = L"1.023 V";
			this->textBox6->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox7
			// 
			this->textBox7->BackColor = System::Drawing::Color::PaleTurquoise;
			this->textBox7->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox7->Location = System::Drawing::Point(150, 211);
			this->textBox7->Name = L"textBox7";
			this->textBox7->Size = System::Drawing::Size(80, 26);
			this->textBox7->TabIndex = 12;
			this->textBox7->Text = L"1.023 V";
			this->textBox7->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox8
			// 
			this->textBox8->BackColor = System::Drawing::Color::PaleTurquoise;
			this->textBox8->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox8->Location = System::Drawing::Point(255, 211);
			this->textBox8->Name = L"textBox8";
			this->textBox8->Size = System::Drawing::Size(80, 26);
			this->textBox8->TabIndex = 13;
			this->textBox8->Text = L"1.023 V";
			this->textBox8->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label1->Location = System::Drawing::Point(59, 192);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(36, 16);
			this->label1->TabIndex = 14;
			this->label1->Text = L"AN4";
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label2->Location = System::Drawing::Point(169, 192);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(36, 16);
			this->label2->TabIndex = 15;
			this->label2->Text = L"AN5";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label3->Location = System::Drawing::Point(277, 192);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(36, 16);
			this->label3->TabIndex = 16;
			this->label3->Text = L"AN6";
			// 
			// timer1
			// 
			this->timer1->Interval = 500;
			this->timer1->Tick += gcnew System::EventHandler(this, &Form1::timer1_Tick);
			// 
			// button7
			// 
			this->button7->BackColor = System::Drawing::Color::DarkSeaGreen;
			this->button7->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 14.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button7->Location = System::Drawing::Point(265, 25);
			this->button7->Name = L"button7";
			this->button7->Size = System::Drawing::Size(70, 40);
			this->button7->TabIndex = 17;
			this->button7->Text = L"終了";
			this->button7->UseVisualStyleBackColor = false;
			this->button7->Click += gcnew System::EventHandler(this, &Form1::button7_Click);
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 11.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label4->Location = System::Drawing::Point(44, 80);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(67, 15);
			this->label4->TabIndex = 18;
			this->label4->Text = L"制御出力";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 11.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label5->Location = System::Drawing::Point(42, 136);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(67, 15);
			this->label5->TabIndex = 19;
			this->label5->Text = L"状態入力";
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 11.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label6->Location = System::Drawing::Point(45, 180);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(37, 15);
			this->label6->TabIndex = 20;
			this->label6->Text = L"計測";
			// 
			// Form1
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 12);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(372, 275);
			this->Controls->Add(this->label6);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->button7);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->textBox8);
			this->Controls->Add(this->textBox7);
			this->Controls->Add(this->textBox6);
			this->Controls->Add(this->textBox5);
			this->Controls->Add(this->textBox4);
			this->Controls->Add(this->textBox3);
			this->Controls->Add(this->textBox2);
			this->Controls->Add(this->button6);
			this->Controls->Add(this->button5);
			this->Controls->Add(this->button4);
			this->Controls->Add(this->button3);
			this->Controls->Add(this->button2);
			this->Controls->Add(this->textBox1);
			this->Controls->Add(this->button1);
			this->Name = L"Form1";
			this->Text = L"汎用PIOホスト　MCHPUSB";
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion

/***********************************************************************************************************/

	 /************* USB接続実行　***********************/
	private: System::Void button1_Click(System::Object^  sender, System::EventArgs^  e) {
		//Now perform an initial start up check of the device state (attached or not attached), since we would not have
		//received a WM_DEVICECHANGE notification.
		if(MPUSBGetDeviceCount(DeviceVID_PID))	//Check and make sure at least one device with matching VID/PID is attached
		{
			EP1OUTHandle = MPUSBOpen(0, DeviceVID_PID, "\\MCHP_EP1", MP_WRITE, 0);
			EP1INHandle = MPUSBOpen(0, DeviceVID_PID, "\\MCHP_EP1", MP_READ, 0);

			AttachedState = TRUE;
			textBox1->Text = "Device Found";
			timer1->Interval = 500;
			timer1->Enabled = TRUE;
		}
		else	//Device must not be connected (or not programmed with correct firmware)
		{
			textBox1->Text = "Device Not Detected";
			AttachedState = FALSE;
		}
	}
	/******** アプリ終了 ***************************/
	private: System::Void button7_Click(System::Object^  sender, System::EventArgs^  e) {
		//Make sure to close any open handles, before exiting the application
		if (EP1OUTHandle != INVALID_HANDLE_VALUE)
			MPUSBClose (EP1OUTHandle);
		if (EP1INHandle != INVALID_HANDLE_VALUE)
			MPUSBClose (EP1INHandle);
		/* Form閉じる */
		this->Close();
	}
	/************** PO制御 ****************************/
	private: System::Void button2_Click(System::Object^  sender, System::EventArgs^  e) {
		/** コマンド作成 **/
		Buffer[0] = 0x31;			// PO制御コマンド
		Buffer[1] = 0x31;			// PO1
		if(button2->BackColor  == Color::Green)
			Buffer[2] = 0x31;		// On制御
		else
			Buffer[2] = 0x30;		// Off制御
		/* コマンド送信と折り返し受信 */
		if(AttachedState == TRUE)	//Do not try and send USB traffic unless the device is actually attached and enumerated/configured.
		{
			if(MPUSBWrite(EP1OUTHandle, Buffer, 4, &ActualLength, 1000))	//Send the command now over USB
			{
				if(MPUSBRead(EP1INHandle, Buffer, 64, &ActualLength, 1000))	//Receive the answer from the device firmware through USB
				{
					/* 状態色変更 */
					if(Buffer[2] == 0x31)
						button2->BackColor =Color:: Red;
					else
						button2->BackColor = Color::Green;
				}
			}
		}
	}

	private: System::Void button3_Click(System::Object^  sender, System::EventArgs^  e) {
		/** コマンド作成 **/
		Buffer[0] = 0x31;			// DO制御コマンド			
		Buffer[1] = 0x32;			// PO2指定
		if(button3->BackColor  == Color::Green)
			Buffer[2] = 0x31;		// On制御
		else
			Buffer[2] = 0x30;		// Off制御
		/** コマンドの送信と折り返し受信 **/
		if(AttachedState == TRUE)	//Do not try and send USB traffic unless the device is actually attached and enumerated/configured.
		{
			if(MPUSBWrite(EP1OUTHandle, Buffer, 3, &ActualLength, 1000))	//Send the command now over USB
			{
				if(MPUSBRead(EP1INHandle, Buffer, 64, &ActualLength, 1000))	//Receive the answer from the device firmware through USB
				{
					/** 状態色変更 **/
					if(Buffer[2] == 0x31)
						button3->BackColor =Color:: Red;
					else
						button3->BackColor = Color::Green;
				}
			}
		}
	}
private: System::Void button4_Click(System::Object^  sender, System::EventArgs^  e) {
		/** コマンド作成 **/
		Buffer[0] = 0x31;			// PO制御コマンド
		Buffer[1] = 0x33;
		if(button4->BackColor  == Color::Green)
			Buffer[2] = 0x31;
		else
			Buffer[2] = 0x30;
		/** コマンドの送信と折り返し受信 **/
		if(AttachedState == TRUE)	//Do not try and send USB traffic unless the device is actually attached and enumerated/configured.
		{
			if(MPUSBWrite(EP1OUTHandle, Buffer, 3, &ActualLength, 1000))	//Send the command now over USB
			{
				if(MPUSBRead(EP1INHandle, Buffer, 64, &ActualLength, 1000))	//Receive the answer from the device firmware through USB
				{
					/** 状態色変更 **/
					if(Buffer[2] == 0x31)
						button4->BackColor =Color:: Red;
					else
						button4->BackColor = Color::Green;
				}
			}
		}

		 }


	private: System::Void button5_Click(System::Object^  sender, System::EventArgs^  e) {
		/** コマンド作成 **/
		Buffer[0] = 0x31;			// PO制御コマンド
		Buffer[1] = 0x34;
		if(button5->BackColor  == Color::Green)
			Buffer[2] = 0x31;
		else
			Buffer[2] = 0x30;
		/** コマンドの送信と折り返し受信 **/
		if(AttachedState == TRUE)	//Do not try and send USB traffic unless the device is actually attached and enumerated/configured.
		{
			if(MPUSBWrite(EP1OUTHandle, Buffer, 3, &ActualLength, 1000))	//Send the command now over USB
			{
				if(MPUSBRead(EP1INHandle, Buffer, 64, &ActualLength, 1000))	//Receive the answer from the device firmware through USB
				{
					/** 状態色変更 **/
					if(Buffer[2] == 0x31)
						button5->BackColor =Color:: Red;
					else
						button5->BackColor = Color::Green;
				}
			}
		}
	}

	private: System::Void button6_Click(System::Object^  sender, System::EventArgs^  e) {
		/** コマンド作成 **/
		Buffer[0] = 0x31;			// PO制御コマンド
		Buffer[1] = 0x35;			// PO5
		if(button6->BackColor  == Color::Green)
			Buffer[2] = 0x31;		// On制御
		else
			Buffer[2] = 0x30;		// Off制御
		/** コマンドの送信と折り返し受信 **/
		if(AttachedState == TRUE)	//Do not try and send USB traffic unless the device is actually attached and enumerated/configured.
		{
			if(MPUSBWrite(EP1OUTHandle, Buffer, 3, &ActualLength, 1000))	//Send the command now over USB
			{
				if(MPUSBRead(EP1INHandle, Buffer, 64, &ActualLength, 1000))	//Receive the answer from the device firmware through USB
				{
					/** 状態色変更 **/
					if(Buffer[2] == 0x31)
						button6->BackColor =Color:: Red;
					else
						button6->BackColor = Color::Green;
				}
			}
		}
	}

	/*********************　インターバルごとの一括入力処理 **********************/
	private: System::Void timer1_Tick(System::Object^  sender, System::EventArgs^  e) {
		std::stringstream ss;		
		/** コマンド作成 **/
		Buffer[0] = 0x34;			// 一括入力コマンド
		Buffer[1] = 0x00;
		Buffer[2] = 0x00;
		Buffer[3] = 0x00;
		/** コマンドの送信と折り返し受信 **/
		if(AttachedState == TRUE)	//Do not try and send USB traffic unless the device is actually attached and enumerated/configured.
		{
			if(MPUSBWrite(EP1OUTHandle, Buffer, 4, &ActualLength, 1000))	//Send the command now over USB
			{
				if(MPUSBRead(EP1INHandle, Buffer, 64, &ActualLength, 1000))	//Receive the answer from the device firmware through USB
				{
					/** 状態色変更 **/
					if(Buffer[2] == 0x31)
						textBox2->BackColor =Color:: Red;
					else
						textBox2->BackColor = Color::Green;
					if(Buffer[3] == 0x31)
						textBox3->BackColor =Color:: Red;
					else
						textBox3->BackColor = Color::Green;
					if(Buffer[4] == 0x31)
						textBox4->BackColor =Color:: Red;
					else
						textBox4->BackColor = Color::Green;
					if(Buffer[5] == 0x31)
						textBox5->BackColor =Color:: Red;
					else
						textBox5->BackColor = Color::Green;
					/* 計測データの表示 */
					ADCValue = (Buffer[7] << 8) + Buffer[6];
					textBox6->Text = ADCValue.ToString();
					ADCValue = (Buffer[9] << 8) + Buffer[8];
					textBox7->Text = ADCValue.ToString();
					ADCValue = (Buffer[11] << 8) + Buffer[10];
					textBox8->Text = ADCValue.ToString();
				}	
			}
		}
	}

};

}


