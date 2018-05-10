#pragma once
//Includes
#include <Windows.h>	//Definitions for various common and not so common types like DWORD, PCHAR, HANDLE, etc.
#include <setupapi.h>	//From Platform SDK. Definitions needed for the SetupDixxx() functions, which we use to
						//find our plug and play device.

//Modify this value to match the VID and PID in your USB device descriptor.
//Use the formatting: "Vid_xxxx&Pid_xxxx" where xxxx is a 16-bit hexadecimal number.
#define MY_DEVICE_ID  "Vid_04d8&Pid_003F"	


namespace HID_PC_Host {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;

//-------------------------------------------------------BEGIN CUT AND PASTE BLOCK-----------------------------------------------------------------------------------
	using namespace System::Runtime::InteropServices;  //Need this to support "unmanaged" code.

	/*
	In order to use these unmanaged functions from within the managed .NET environment, we need
	to explicitly import the functions which we will be using from other .DLL file(s).  Simply
	including the appropriate header files is not enough. 

	Note: In order to avoid potential name conflicts in the header files (which we still use),
	I have renamed the functions by adding "UM" (unmanaged) onto the end of them.  To find 
	documentation for the functions in MSDN, search for the function name without the extra 
	"UM" attached.
	Note2: In the header files (such as setupapi.h), normally the function names are 
	remapped, depending upon if UNICODE is defined or not.  For example, two versions of the
	function SetupDiGetDeviceInterfaceDetail() exist.  One for UNICODE, and one for ANSI.  
	If the wrong version of the function is called, things won't work correctly.  Therefore,
	in order to make sure the correct one gets called (based on your compiler settings, which
	may or may not define "UNICODE"), it is useful to explicity specify the CharSet when doing
	the DLL import.
	*/

	#ifdef UNICODE
	#define	Seeifdef	Unicode
	#else
	#define Seeifdef	Ansi
	#endif

	//Returns a HDEVINFO type for a device information set (USB HID devices in
	//our case).  We will need the HDEVINFO as in input parameter for calling many of
	//the other SetupDixxx() functions.
	[DllImport("setupapi.dll" , CharSet = CharSet::Seeifdef, EntryPoint="SetupDiGetClassDevs", CallingConvention=CallingConvention::Winapi)]		
	extern "C" HDEVINFO  SetupDiGetClassDevsUM(
		LPGUID  ClassGuid,					//Input: Supply the class GUID here. 
		PCTSTR  Enumerator,					//Input: Use NULL here, not important for our purposes
		HWND  hwndParent,					//Input: Use NULL here, not important for our purposes
		DWORD  Flags);						//Input: Flags describing what kind of filtering to use.

	//Gives us "PSP_DEVICE_INTERFACE_DATA" which contains the Interface specific GUID (different
	//from class GUID).  We need the interface GUID to get the device path.
	[DllImport("setupapi.dll" , CharSet = CharSet::Seeifdef, EntryPoint="SetupDiEnumDeviceInterfaces", CallingConvention=CallingConvention::Winapi)]				
	extern "C" WINSETUPAPI BOOL WINAPI  SetupDiEnumDeviceInterfacesUM(
		HDEVINFO  DeviceInfoSet,			//Input: Give it the HDEVINFO we got from SetupDiGetClassDevs()
		PSP_DEVINFO_DATA  DeviceInfoData,	//Input (optional)
		LPGUID  InterfaceClassGuid,			//Input 
		DWORD  MemberIndex,					//Input: "Index" of the device you are interested in getting the path for.
		PSP_DEVICE_INTERFACE_DATA  DeviceInterfaceData);//Output: This function fills in an "SP_DEVICE_INTERFACE_DATA" structure.

	//SetupDiDestroyDeviceInfoList() frees up memory by destroying a DeviceInfoList
	[DllImport("setupapi.dll" , CharSet = CharSet::Seeifdef, EntryPoint="SetupDiDestroyDeviceInfoList", CallingConvention=CallingConvention::Winapi)]
	extern "C" WINSETUPAPI BOOL WINAPI  SetupDiDestroyDeviceInfoListUM(			
		HDEVINFO  DeviceInfoSet);			//Input: Give it a handle to a device info list to deallocate from RAM.

	//SetupDiEnumDeviceInfo() fills in an "SP_DEVINFO_DATA" structure, which we need for SetupDiGetDeviceRegistryProperty()
	[DllImport("setupapi.dll" , CharSet = CharSet::Seeifdef, EntryPoint="SetupDiEnumDeviceInfo", CallingConvention=CallingConvention::Winapi)]
	extern "C" WINSETUPAPI BOOL WINAPI  SetupDiEnumDeviceInfoUM(
		HDEVINFO  DeviceInfoSet,
		DWORD  MemberIndex,
		PSP_DEVINFO_DATA  DeviceInfoData);

	//SetupDiGetDeviceRegistryProperty() gives us the hardware ID, which we use to check to see if it has matching VID/PID
	[DllImport("setupapi.dll" , CharSet = CharSet::Seeifdef, EntryPoint="SetupDiGetDeviceRegistryProperty", CallingConvention=CallingConvention::Winapi)]
	extern "C"	WINSETUPAPI BOOL WINAPI  SetupDiGetDeviceRegistryPropertyUM(
		HDEVINFO  DeviceInfoSet,
		PSP_DEVINFO_DATA  DeviceInfoData,
		DWORD  Property,
		PDWORD  PropertyRegDataType,
		PBYTE  PropertyBuffer,   
		DWORD  PropertyBufferSize,  
		PDWORD  RequiredSize);

	//SetupDiGetDeviceInterfaceDetail() gives us a device path, which is needed before CreateFile() can be used.
	[DllImport("setupapi.dll" , CharSet = CharSet::Seeifdef, EntryPoint="SetupDiGetDeviceInterfaceDetail", CallingConvention=CallingConvention::Winapi)]
	extern "C" BOOL SetupDiGetDeviceInterfaceDetailUM(
		HDEVINFO DeviceInfoSet,										//Input: Wants HDEVINFO which can be obtained from SetupDiGetClassDevs()
		PSP_DEVICE_INTERFACE_DATA DeviceInterfaceData,				//Input: Pointer to an structure which defines the device interface.  
		PSP_DEVICE_INTERFACE_DETAIL_DATA DeviceInterfaceDetailData,	//Output: Pointer to a strucutre, which will contain the device path.
		DWORD DeviceInterfaceDetailDataSize,						//Input: Number of bytes to retrieve.
		PDWORD RequiredSize,										//Output (optional): Te number of bytes needed to hold the entire struct 
		PSP_DEVINFO_DATA DeviceInfoData);							//Output


//  Variables that need to have wide scope.
	HANDLE WriteHandle = INVALID_HANDLE_VALUE;	//Need to get a write "handle" to our device before we can write to it.
	HANDLE ReadHandle = INVALID_HANDLE_VALUE;	//Need to get a read "handle" to our device before we can read from it.
//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------

	/************* グローバル変数定義 ********************/
	unsigned int ADCValue;
	DWORD BytesWritten = 0;
	DWORD BytesRead = 0;
	unsigned char OutputPacketBuffer[65];	//Allocate a memory buffer equal to our endpoint size + 1
	unsigned char InputPacketBuffer[65];
	/****************************************************/

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
	private: System::Windows::Forms::Label^  label1;
	private: System::Windows::Forms::Button^  button3;
	private: System::Windows::Forms::Button^  button4;
	private: System::Windows::Forms::Button^  button5;
	private: System::Windows::Forms::Button^  button6;
	private: System::Windows::Forms::Button^  button7;
	private: System::Windows::Forms::Button^  button8;
	private: System::Windows::Forms::Button^  button9;
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Label^  label3;
	private: System::Windows::Forms::Label^  label4;
	private: System::Windows::Forms::Label^  label5;
	private: System::Windows::Forms::TextBox^  textBox2;
	private: System::Windows::Forms::TextBox^  textBox3;
	private: System::Windows::Forms::TextBox^  textBox4;
	private: System::Windows::Forms::Timer^  timer1;

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
			this->label1 = (gcnew System::Windows::Forms::Label());
			this->button3 = (gcnew System::Windows::Forms::Button());
			this->button4 = (gcnew System::Windows::Forms::Button());
			this->button5 = (gcnew System::Windows::Forms::Button());
			this->button6 = (gcnew System::Windows::Forms::Button());
			this->button7 = (gcnew System::Windows::Forms::Button());
			this->button8 = (gcnew System::Windows::Forms::Button());
			this->button9 = (gcnew System::Windows::Forms::Button());
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->textBox2 = (gcnew System::Windows::Forms::TextBox());
			this->textBox3 = (gcnew System::Windows::Forms::TextBox());
			this->textBox4 = (gcnew System::Windows::Forms::TextBox());
			this->timer1 = (gcnew System::Windows::Forms::Timer(this->components));
			this->SuspendLayout();
			// 
			// button1
			// 
			this->button1->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button1->Location = System::Drawing::Point(22, 20);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(70, 33);
			this->button1->TabIndex = 0;
			this->button1->Text = L"接続";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &Form1::button1_Click);
			// 
			// textBox1
			// 
			this->textBox1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 11.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox1->Location = System::Drawing::Point(98, 26);
			this->textBox1->Name = L"textBox1";
			this->textBox1->Size = System::Drawing::Size(136, 22);
			this->textBox1->TabIndex = 1;
			this->textBox1->Text = L"Wait";
			// 
			// button2
			// 
			this->button2->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button2->Location = System::Drawing::Point(240, 20);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(70, 33);
			this->button2->TabIndex = 2;
			this->button2->Text = L"終了";
			this->button2->UseVisualStyleBackColor = true;
			this->button2->Click += gcnew System::EventHandler(this, &Form1::button2_Click);
			// 
			// label1
			// 
			this->label1->AutoSize = true;
			this->label1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label1->Location = System::Drawing::Point(19, 90);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(36, 16);
			this->label1->TabIndex = 3;
			this->label1->Text = L"LED";
			// 
			// button3
			// 
			this->button3->BackColor = System::Drawing::Color::Green;
			this->button3->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button3->Location = System::Drawing::Point(80, 80);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(40, 40);
			this->button3->TabIndex = 4;
			this->button3->Text = L"1";
			this->button3->UseVisualStyleBackColor = false;
			this->button3->Click += gcnew System::EventHandler(this, &Form1::button3_Click);
			// 
			// button4
			// 
			this->button4->BackColor = System::Drawing::Color::Green;
			this->button4->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button4->Location = System::Drawing::Point(140, 80);
			this->button4->Name = L"button4";
			this->button4->Size = System::Drawing::Size(40, 40);
			this->button4->TabIndex = 5;
			this->button4->Text = L"2";
			this->button4->UseVisualStyleBackColor = false;
			this->button4->Click += gcnew System::EventHandler(this, &Form1::button4_Click);
			// 
			// button5
			// 
			this->button5->BackColor = System::Drawing::Color::Green;
			this->button5->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button5->Location = System::Drawing::Point(200, 80);
			this->button5->Name = L"button5";
			this->button5->Size = System::Drawing::Size(40, 40);
			this->button5->TabIndex = 6;
			this->button5->Text = L"3";
			this->button5->UseVisualStyleBackColor = false;
			this->button5->Click += gcnew System::EventHandler(this, &Form1::button5_Click);
			// 
			// button6
			// 
			this->button6->BackColor = System::Drawing::Color::Green;
			this->button6->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button6->Location = System::Drawing::Point(260, 80);
			this->button6->Name = L"button6";
			this->button6->Size = System::Drawing::Size(40, 40);
			this->button6->TabIndex = 7;
			this->button6->Text = L"4";
			this->button6->UseVisualStyleBackColor = false;
			this->button6->Click += gcnew System::EventHandler(this, &Form1::button6_Click);
			// 
			// button7
			// 
			this->button7->BackColor = System::Drawing::Color::Green;
			this->button7->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button7->Location = System::Drawing::Point(80, 130);
			this->button7->Name = L"button7";
			this->button7->Size = System::Drawing::Size(40, 40);
			this->button7->TabIndex = 8;
			this->button7->Text = L"1";
			this->button7->UseVisualStyleBackColor = false;
			this->button7->Click += gcnew System::EventHandler(this, &Form1::button7_Click);
			// 
			// button8
			// 
			this->button8->BackColor = System::Drawing::Color::Green;
			this->button8->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button8->Location = System::Drawing::Point(140, 130);
			this->button8->Name = L"button8";
			this->button8->Size = System::Drawing::Size(40, 40);
			this->button8->TabIndex = 9;
			this->button8->Text = L"2";
			this->button8->UseVisualStyleBackColor = false;
			this->button8->Click += gcnew System::EventHandler(this, &Form1::button8_Click);
			// 
			// button9
			// 
			this->button9->BackColor = System::Drawing::Color::Green;
			this->button9->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 14.25F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button9->Location = System::Drawing::Point(200, 130);
			this->button9->Name = L"button9";
			this->button9->Size = System::Drawing::Size(40, 40);
			this->button9->TabIndex = 10;
			this->button9->Text = L"3";
			this->button9->UseVisualStyleBackColor = false;
			this->button9->Click += gcnew System::EventHandler(this, &Form1::button9_Click);
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label2->Location = System::Drawing::Point(19, 140);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(54, 16);
			this->label2->TabIndex = 11;
			this->label2->Text = L"スイッチ";
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label3->Location = System::Drawing::Point(52, 189);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(64, 16);
			this->label3->TabIndex = 12;
			this->label3->Text = L"温度 ℃";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label4->Location = System::Drawing::Point(140, 189);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(64, 16);
			this->label4->TabIndex = 13;
			this->label4->Text = L"湿度 ％";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label5->Location = System::Drawing::Point(237, 189);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(56, 16);
			this->label5->TabIndex = 14;
			this->label5->Text = L"電圧 V";
			// 
			// textBox2
			// 
			this->textBox2->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 20.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox2->Location = System::Drawing::Point(50, 208);
			this->textBox2->MaxLength = 5;
			this->textBox2->Name = L"textBox2";
			this->textBox2->Size = System::Drawing::Size(63, 34);
			this->textBox2->TabIndex = 15;
			this->textBox2->Text = L"23.4";
			this->textBox2->TextChanged += gcnew System::EventHandler(this, &Form1::textBox2_TextChanged);
			// 
			// textBox3
			// 
			this->textBox3->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 20.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox3->Location = System::Drawing::Point(140, 208);
			this->textBox3->Name = L"textBox3";
			this->textBox3->Size = System::Drawing::Size(63, 34);
			this->textBox3->TabIndex = 16;
			this->textBox3->Text = L"56";
			this->textBox3->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox4
			// 
			this->textBox4->Font = (gcnew System::Drawing::Font(L"ＭＳ ゴシック", 20.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox4->Location = System::Drawing::Point(233, 208);
			this->textBox4->MaxLength = 5;
			this->textBox4->Name = L"textBox4";
			this->textBox4->Size = System::Drawing::Size(63, 34);
			this->textBox4->TabIndex = 17;
			this->textBox4->Text = L"5.00";
			// 
			// timer1
			// 
			this->timer1->Interval = 500;
			this->timer1->Tick += gcnew System::EventHandler(this, &Form1::timer1_Tick);
			// 
			// Form1
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 12);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(333, 262);
			this->Controls->Add(this->textBox4);
			this->Controls->Add(this->textBox3);
			this->Controls->Add(this->textBox2);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->button9);
			this->Controls->Add(this->button8);
			this->Controls->Add(this->button7);
			this->Controls->Add(this->button6);
			this->Controls->Add(this->button5);
			this->Controls->Add(this->button4);
			this->Controls->Add(this->button3);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->button2);
			this->Controls->Add(this->textBox1);
			this->Controls->Add(this->button1);
			this->Name = L"Form1";
			this->Text = L"温度湿度メータ";
			this->Load += gcnew System::EventHandler(this, &Form1::Form1_Load);
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion


private: System::Void Form1_Load(System::Object^  sender, System::EventArgs^  e) {
		 }


/******************** USB接続ボタンの処理 ****************************/
private: System::Void button1_Click(System::Object^  sender, System::EventArgs^  e) {
//-------------------------------------------------------BEGIN CUT AND PASTE BLOCK-----------------------------------------------------------------------------------
		/* 
		Before we can "connect" our application to our USB embedded device, we must first find the device.
		A USB bus can have many devices simultaneously connected, so somehow we have to find our device, and only
		our device.  This is done with the Vendor ID (VID) and Product ID (PID).  Each USB product line should have
		a unique combination of VID and PID.  

		Microsoft has created a number of functions which are useful for finding plug and play devices.  Documentation
		for each function used can be found in the MSDN library.  We will be using the following functions:

		SetupDiGetClassDevs()					//provided by setupapi.dll, which comes with Windows
		SetupDiEnumDeviceInterfaces()			//provided by setupapi.dll, which comes with Windows
		GetLastError()							//provided by kernel32.dll, which comes with Windows
		SetupDiDestroyDeviceInfoList()			//provided by setupapi.dll, which comes with Windows
		SetupDiGetDeviceInterfaceDetail()		//provided by setupapi.dll, which comes with Windows
		SetupDiGetDeviceRegistryProperty()		//provided by setupapi.dll, which comes with Windows
		malloc()								//part of C runtime library, msvcrt.dll?
		CreateFile()							//provided by kernel32.dll, which comes with Windows

		We will also be using the following unusual data types and structures.  Documentation can also be found in
		the MSDN library:

		PSP_DEVICE_INTERFACE_DATA
		PSP_DEVICE_INTERFACE_DETAIL_DATA
		SP_DEVINFO_DATA
		HDEVINFO
		HANDLE
		GUID

		The ultimate objective of the following code is to call CreateFile(), which opens a communications
		pipe to a specific device (such as a HID class USB device endpoint).  CreateFile() returns a "handle" 
		which is needed later when calling ReadFile() or WriteFile().  These functions are used to actually 
		send and receive application related data to/from the USB peripheral device.

		However, in order to call CreateFile(), we first need to get the device path for the USB device
		with the correct VID and PID.  Getting the device path is a multi-step round about process, which
		requires calling several of the SetupDixxx() functions provided by setupapi.dll.
		*/


		//Globally Unique Identifier (GUID) for HID class devices.  Windows uses GUIDs to identify things.
		GUID InterfaceClassGuid = {0x4d1e55b2, 0xf16f, 0x11cf, 0x88, 0xcb, 0x00, 0x11, 0x11, 0x00, 0x00, 0x30}; 

		HDEVINFO DeviceInfoTable = INVALID_HANDLE_VALUE;
		PSP_DEVICE_INTERFACE_DATA InterfaceDataStructure = new SP_DEVICE_INTERFACE_DATA;
		PSP_DEVICE_INTERFACE_DETAIL_DATA DetailedInterfaceDataStructure = new SP_DEVICE_INTERFACE_DETAIL_DATA;
		SP_DEVINFO_DATA DevInfoData;

		DWORD InterfaceIndex = 0;
		DWORD StatusLastError = 0;
		DWORD dwRegType;
		DWORD dwRegSize;
		DWORD StructureSize = 0;
		PBYTE PropertyValueBuffer;
		bool MatchFound = false;
		DWORD ErrorStatus;

		String^ DeviceIDToFind = MY_DEVICE_ID;

		//First populate a list of plugged in devices (by specifying "DIGCF_PRESENT"), which are of the specified class GUID. 
		DeviceInfoTable = SetupDiGetClassDevsUM(&InterfaceClassGuid, NULL, NULL, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);

		//Now look through the list we just populated.  We are trying to see if any of them match our device. 
		while(true)
		{
			InterfaceDataStructure->cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
			if(SetupDiEnumDeviceInterfacesUM(DeviceInfoTable, NULL, &InterfaceClassGuid, InterfaceIndex, InterfaceDataStructure))
			{
				ErrorStatus = GetLastError();
				if(ERROR_NO_MORE_ITEMS == ErrorStatus)	//Did we reach the end of the list of matching devices in the DeviceInfoTable?
				{	//Cound not find the device.  Must not have been attached.
					SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.
					return;		
				}
			}
			else	//Else some other kind of unknown error ocurred...
			{
				ErrorStatus = GetLastError();
				SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.
				return;	
			}

			//Now retrieve the hardware ID from the registry.  The hardware ID contains the VID and PID, which we will then 
			//check to see if it is the correct device or not.

			//Initialize an appropriate SP_DEVINFO_DATA structure.  We need this structure for SetupDiGetDeviceRegistryProperty().
			DevInfoData.cbSize = sizeof(SP_DEVINFO_DATA);
			SetupDiEnumDeviceInfoUM(DeviceInfoTable, InterfaceIndex, &DevInfoData);

			//First query for the size of the hardware ID, so we can know how big a buffer to allocate for the data.
			SetupDiGetDeviceRegistryPropertyUM(DeviceInfoTable, &DevInfoData, SPDRP_HARDWAREID, &dwRegType, NULL, 0, &dwRegSize);

			//Allocate a buffer for the hardware ID.
			PropertyValueBuffer = (BYTE *) malloc (dwRegSize);
			if(PropertyValueBuffer == NULL)	//if null, error, couldn't allocate enough memory
			{	//Can't really recover from this situation, just exit instead.
				SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.
				return;		
			}

			//Retrieve the hardware IDs for the current device we are looking at.  PropertyValueBuffer gets filled with a 
			//REG_MULTI_SZ (array of null terminated strings).  To find a device, we only care about the very first string in the
			//buffer, which will be the "device ID".  The device ID is a string which contains the VID and PID, in the example 
			//format "Vid_04d8&Pid_003f".
			SetupDiGetDeviceRegistryPropertyUM(DeviceInfoTable, &DevInfoData, SPDRP_HARDWAREID, &dwRegType, PropertyValueBuffer, dwRegSize, NULL);

			//Now check if the first string in the hardware ID matches the device ID of my USB device.
			#ifdef UNICODE
			String^ DeviceIDFromRegistry = gcnew String((wchar_t *)PropertyValueBuffer);
			#else
			String^ DeviceIDFromRegistry = gcnew String((char *)PropertyValueBuffer);
			#endif

			free(PropertyValueBuffer);		//No longer need the PropertyValueBuffer, free the memory to prevent potential memory leaks
			textBox1->Text = "Searching Device!";
			//Convert both strings to lower case.  This makes the code more robust/portable accross OS Versions
			DeviceIDFromRegistry = DeviceIDFromRegistry->ToLowerInvariant();	
			DeviceIDToFind = DeviceIDToFind->ToLowerInvariant();				
			//Now check if the hardware ID we are looking at contains the correct VID/PID
			MatchFound = DeviceIDFromRegistry->Contains(DeviceIDToFind);		
			if(MatchFound == true)
			{
				//Device must have been found.  Open read and write handles.  In order to do this, we will need the actual device path first.
				//We can get the path by calling SetupDiGetDeviceInterfaceDetail(), however, we have to call this function twice:  The first
				//time to get the size of the required structure/buffer to hold the detailed interface data, then a second time to actually 
				//get the structure (after we have allocated enough memory for the structure.)
				DetailedInterfaceDataStructure->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
				//First call populates "StructureSize" with the correct value
				SetupDiGetDeviceInterfaceDetailUM(DeviceInfoTable, InterfaceDataStructure, NULL, NULL, &StructureSize, NULL);	
				DetailedInterfaceDataStructure = (PSP_DEVICE_INTERFACE_DETAIL_DATA)(malloc(StructureSize));		//Allocate enough memory
				if(DetailedInterfaceDataStructure == NULL)	//if null, error, couldn't allocate enough memory
				{	//Can't really recover from this situation, just exit instead.
					SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.
					return;		
				}
				DetailedInterfaceDataStructure->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
				 //Now call SetupDiGetDeviceInterfaceDetail() a second time to receive the goods.  
				SetupDiGetDeviceInterfaceDetailUM(DeviceInfoTable, InterfaceDataStructure, DetailedInterfaceDataStructure, StructureSize, NULL, NULL); 

				//We now have the proper device path, and we can finally open read and write handles to the device.
				//We store the handles in the global variables "WriteHandle" and "ReadHandle", which we will use later to actually communicate.
				WriteHandle = CreateFile((DetailedInterfaceDataStructure->DevicePath), GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0);

				ErrorStatus = GetLastError();
				if(ErrorStatus == ERROR_SUCCESS)
					textBox1->Text = "Write Enabled.";				//Make button no longer greyed out
				ReadHandle = CreateFile((DetailedInterfaceDataStructure->DevicePath), GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0);
				ErrorStatus = GetLastError();
				if(ErrorStatus == ERROR_SUCCESS)
				{
					textBox1->Text = "Read Enabled.";					//Make label no longer greyed out
				}
				SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.
				//We now have the proper device path, and we can finally open read and write handles to the device.
				//We store the handles in the global variables "WriteHandle" and "ReadHandle", which we will use later to actually communicate.
				WriteHandle = CreateFile((DetailedInterfaceDataStructure->DevicePath), GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0);

				ErrorStatus = GetLastError();
				if(ErrorStatus == ERROR_SUCCESS)
					textBox1->Text = "Write Enabled.";				//Make button no longer greyed out
				ReadHandle = CreateFile((DetailedInterfaceDataStructure->DevicePath), GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0);
				ErrorStatus = GetLastError();
				if(ErrorStatus == ERROR_SUCCESS)
				{
					textBox1->Text = "Read Enabled.";					//Make label no longer greyed out
				}
				SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.

				/********************** 追加修正部 ********************************/
				/* 接続確認メッセージ準備 */
				OutputPacketBuffer[0] = 0;							// Report ID  
				OutputPacketBuffer[1] = 0x30;						// 接続確認 
				/* 接続確認 コマンド送信 */
				WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
				/* OK受信 */
				ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
				/* OK確認 */
				if((InputPacketBuffer[3] == 0x4F)&&(InputPacketBuffer[4] == 0x4B))
					textBox1->Text = "Connected OK!";				// 接続正常完了
				/* 接続完了でタイマ1スタート */
				timer1->Interval = 1000;
				timer1->Enabled = TRUE;
				return;
			}

			InterfaceIndex++;	
			//Keep looping until we either find a device with matching VID and PID, or until we run out of items.
		}//end of while(true)	
//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------
	}

/*********************　終了ボタンの処理 *****************************/
private: System::Void button2_Click(System::Object^  sender, System::EventArgs^  e) {
		/* Form閉じる */
		this->Close();
	 }
/******************** LED1の制御ボタンの処理 ************************/
private: System::Void button3_Click(System::Object^  sender, System::EventArgs^  e) {
		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x31;				// LED制御コマンド
		OutputPacketBuffer[2] = 0x31;				// LED1アドレス
		if(button3->BackColor  == Color::Green)
			OutputPacketBuffer[3] = 0x31;			// On制御
		else
			OutputPacketBuffer[3] = 0x30;			// Off制御
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x31)			// オンか？	
			button3->BackColor =Color:: Red;		// オンなら赤
		else
			button3->BackColor = Color::Green;		// オフなら緑
	}
/******************** LED2の制御ボタンの処理 ************************/	
private: System::Void button4_Click(System::Object^  sender, System::EventArgs^  e) {
		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x31;				// LED制御コマンド
		OutputPacketBuffer[2] = 0x32;				// LED2アドレス
		if(button4->BackColor  == Color::Green)
			OutputPacketBuffer[3] = 0x31;			// On制御
		else
			OutputPacketBuffer[3] = 0x30;			// Off制御
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x31)			// オンか？	
			button4->BackColor =Color:: Red;		// オンなら赤
		else
			button4->BackColor = Color::Green;		// オフなら緑
	 }
/******************** LED3の制御ボタンの処理 ************************/
private: System::Void button5_Click(System::Object^  sender, System::EventArgs^  e) {

		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x31;				// LED制御コマンド
		OutputPacketBuffer[2] = 0x33;				// LED3アドレス
		if(button5->BackColor  == Color::Green)
			OutputPacketBuffer[3] = 0x31;			// On制御
		else
			OutputPacketBuffer[3] = 0x30;			// Off制御
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x31)			// オンか？
			button5->BackColor =Color:: Red;		// オンなら赤
		else
			button5->BackColor = Color::Green;		// オフまら緑
	 }
/******************** LED4の制御ボタンの処理 ************************/
private: System::Void button6_Click(System::Object^  sender, System::EventArgs^  e) {
		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x31;				// LED制御コマンド
		OutputPacketBuffer[2] = 0x34;				// LED4アドレス
		if(button6->BackColor  == Color::Green)
			OutputPacketBuffer[3] = 0x31;			// On制御
		else
			OutputPacketBuffer[3] = 0x30;			// Off制御
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x31)			// オンか？
			button6->BackColor =Color:: Red;		// オンなら赤
		else
			button6->BackColor = Color::Green;		// オフなら緑

		 }
/******************** SW1の状態要求ボタンの処理 ************************/
private: System::Void button7_Click(System::Object^  sender, System::EventArgs^  e) {

		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x32;				// SW状態要求コマンド
		OutputPacketBuffer[2] = 0x31;				// SW1アドレス
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x30)			// オンか？	
			button7->BackColor =Color:: Red;		// オンなら赤
		else
			button7->BackColor = Color::Green;		// オフなら緑
		 }
/******************** SW2の状態要求ボタンの処理 ************************/
private: System::Void button8_Click(System::Object^  sender, System::EventArgs^  e) {

		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x32;				// SW状態要求コマンド
		OutputPacketBuffer[2] = 0x32;				// SW2アドレス
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x30)			// オンか？	
			button8->BackColor =Color:: Red;		// オンなら赤
		else
			button8->BackColor = Color::Green;		// オンなら緑
		 }
/******************** SW3の状態要求ボタンの処理 ************************/
private: System::Void button9_Click(System::Object^  sender, System::EventArgs^  e) {

		/* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x32;				// SW状態要求コマンド
		OutputPacketBuffer[2] = 0x33;				// SW3アドレス
		/* コマンド送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 状態送信要求 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 状態色変更 */
		if(InputPacketBuffer[3] == 0x30)			// オンか？	
			button9->BackColor =Color:: Red;		// オンなら赤
		else
			button9->BackColor = Color::Green;		// オフなら緑
		 }
/******************** タイマ1のイベント処理 ************************/
private: System::Void timer1_Tick(System::Object^  sender, System::EventArgs^  e) {
		unsigned int ADCValue, Humi;
		double Ondo, Volt;
			 
		 /* メッセージ準備 */
		OutputPacketBuffer[0] = 0;					// Report ID  
		OutputPacketBuffer[1] = 0x33;				// 計測要求コマンド
		OutputPacketBuffer[2] = 0x31;				// 計測チャネルアドレス1
		/* 温度計測要求送信 */
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 返送データ受信 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 温度計測値表示 */
		ADCValue = (InputPacketBuffer[4] * 256) + InputPacketBuffer[3];
		Ondo = (ADCValue * 500.0) / 1024 - 50.0;
		textBox2->Text = Ondo.ToString();			// 数値を文字列にして表示
		/* 湿度計即要求 */
		OutputPacketBuffer[2] = 0x32;				// 計測チャネルアドレス2
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 返送データ受信 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		/* 湿度計測値表示 */
		ADCValue = (InputPacketBuffer[4] * 256) + InputPacketBuffer[3];
		Humi = (75 * ADCValue) / 409 -18;
		textBox3->Text = Humi.ToString();			// 数値を文字列にして表示
		/* 電圧計測要求 */
		OutputPacketBuffer[2] = 0x33;				// 計測チャネルアドレス3
		WriteFile(WriteHandle, &OutputPacketBuffer, 65, &BytesWritten, 0);
		/* 電圧計測値表示 */
		ReadFile(ReadHandle, &InputPacketBuffer, 65, &BytesRead, 0);
		ADCValue = (InputPacketBuffer[4] * 256) + InputPacketBuffer[3];
		Volt = (ADCValue * 5.0) / 1024;
		textBox4->Text = Volt.ToString();			// 数値を文字列にして表示
	 }
private: System::Void textBox2_TextChanged(System::Object^  sender, System::EventArgs^  e) {
		 }
};
}

