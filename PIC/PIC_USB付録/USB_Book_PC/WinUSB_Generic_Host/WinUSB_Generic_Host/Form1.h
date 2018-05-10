#pragma once
#include <Windows.h>
#include <setupapi.h>
#include <Winusb.h>

#define MY_DEVICE_ID  "Vid_04d8&Pid_0053"

namespace WinUSB_Generic_Host {

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

	//Returns a HDEVINFO type for a device information set (WinUSB devices in
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

	//WinUsb_Initialize() needs to be called before the application can begin sending/receiving data with the USB device.
	[DllImport("winusb.dll" , CharSet = CharSet::Seeifdef, EntryPoint="WinUsb_Initialize", CallingConvention=CallingConvention::Winapi)]
	extern "C" BOOL WinUsb_Initialize(
		HANDLE	DeviceHandle,
		PWINUSB_INTERFACE_HANDLE InterfaceHandle);

	//WinUsb_WritePipe() is the basic function used to write data to the USB device (sends data to OUT endpoints on the device)
	[DllImport("winusb.dll" , CharSet = CharSet::Seeifdef, EntryPoint="WinUsb_WritePipe", CallingConvention=CallingConvention::Winapi)]
	extern "C" BOOL WinUsb_WritePipe(
		WINUSB_INTERFACE_HANDLE InterfaceHandle,
		UCHAR PipeID,
		PUCHAR Buffer,
		ULONG BufferLength,
		PULONG LengthTransferred,
		LPOVERLAPPED Overlapped);

	//WinUsb_ReadPipe() is the basic function used to read data from the USB device (polls for and obtains data from
	//IN endpoints on the device)
	[DllImport("winusb.dll" , CharSet = CharSet::Seeifdef, EntryPoint="WinUsb_ReadPipe", CallingConvention=CallingConvention::Winapi)]
	extern "C" BOOL WinUsb_ReadPipe(
		WINUSB_INTERFACE_HANDLE InterfaceHandle,
		UCHAR PipeID,
		PUCHAR Buffer,
		ULONG BufferLength,
		PULONG LengthTransferred,
		LPOVERLAPPED Overlapped);


//  Variables that need to have wide scope.
	HANDLE MyDeviceHandle = INVALID_HANDLE_VALUE;		//First need to get the Device handle
	WINUSB_INTERFACE_HANDLE MyWinUSBInterfaceHandle;	//And then can call WinUsb_Initialize() to get the interface handle
														//which is needed for doing other operations with the device (like
														//reading and writing to the USB device).
//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------
/*************** グローバル変数定義 *********************************/
ULONG BytesWritten = 0;
ULONG BytesRead = 0;
unsigned char OutputPacketBuffer[64];
unsigned char InputPacketBuffer[64];

/*******************************************************************/

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
	private: System::Windows::Forms::Label^  label2;
	private: System::Windows::Forms::Button^  button7;
	private: System::Windows::Forms::Button^  button8;
	private: System::Windows::Forms::Button^  button9;
	private: System::Windows::Forms::Label^  label3;
	private: System::Windows::Forms::Label^  label4;
	private: System::Windows::Forms::Label^  label5;
	private: System::Windows::Forms::TextBox^  textBox2;
	private: System::Windows::Forms::TextBox^  textBox3;
	private: System::Windows::Forms::TextBox^  textBox4;
	private: System::Windows::Forms::Timer^  timer1;
	private: System::Windows::Forms::Label^  label6;
	private: System::Windows::Forms::Button^  button10;
	private: System::Windows::Forms::Button^  button11;
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
			this->label2 = (gcnew System::Windows::Forms::Label());
			this->button7 = (gcnew System::Windows::Forms::Button());
			this->button8 = (gcnew System::Windows::Forms::Button());
			this->button9 = (gcnew System::Windows::Forms::Button());
			this->label3 = (gcnew System::Windows::Forms::Label());
			this->label4 = (gcnew System::Windows::Forms::Label());
			this->label5 = (gcnew System::Windows::Forms::Label());
			this->textBox2 = (gcnew System::Windows::Forms::TextBox());
			this->textBox3 = (gcnew System::Windows::Forms::TextBox());
			this->textBox4 = (gcnew System::Windows::Forms::TextBox());
			this->timer1 = (gcnew System::Windows::Forms::Timer(this->components));
			this->label6 = (gcnew System::Windows::Forms::Label());
			this->button10 = (gcnew System::Windows::Forms::Button());
			this->button11 = (gcnew System::Windows::Forms::Button());
			this->SuspendLayout();
			// 
			// button1
			// 
			this->button1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button1->Location = System::Drawing::Point(30, 20);
			this->button1->Name = L"button1";
			this->button1->Size = System::Drawing::Size(70, 40);
			this->button1->TabIndex = 0;
			this->button1->Text = L"接続";
			this->button1->UseVisualStyleBackColor = true;
			this->button1->Click += gcnew System::EventHandler(this, &Form1::button1_Click);
			// 
			// textBox1
			// 
			this->textBox1->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 11.25F, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox1->Location = System::Drawing::Point(106, 30);
			this->textBox1->Name = L"textBox1";
			this->textBox1->Size = System::Drawing::Size(136, 22);
			this->textBox1->TabIndex = 1;
			this->textBox1->Text = L"Waiting";
			// 
			// button2
			// 
			this->button2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button2->Location = System::Drawing::Point(248, 20);
			this->button2->Name = L"button2";
			this->button2->Size = System::Drawing::Size(70, 40);
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
			this->label1->Location = System::Drawing::Point(28, 81);
			this->label1->Name = L"label1";
			this->label1->Size = System::Drawing::Size(72, 16);
			this->label1->TabIndex = 3;
			this->label1->Text = L"制御出力";
			// 
			// button3
			// 
			this->button3->BackColor = System::Drawing::Color::Green;
			this->button3->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button3->Location = System::Drawing::Point(30, 100);
			this->button3->Name = L"button3";
			this->button3->Size = System::Drawing::Size(45, 45);
			this->button3->TabIndex = 4;
			this->button3->Text = L"1";
			this->button3->UseVisualStyleBackColor = false;
			this->button3->Click += gcnew System::EventHandler(this, &Form1::button3_Click);
			// 
			// button4
			// 
			this->button4->BackColor = System::Drawing::Color::Green;
			this->button4->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button4->Location = System::Drawing::Point(90, 100);
			this->button4->Name = L"button4";
			this->button4->Size = System::Drawing::Size(45, 45);
			this->button4->TabIndex = 5;
			this->button4->Text = L"2";
			this->button4->UseVisualStyleBackColor = false;
			this->button4->Click += gcnew System::EventHandler(this, &Form1::button4_Click);
			// 
			// button5
			// 
			this->button5->BackColor = System::Drawing::Color::Green;
			this->button5->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button5->Location = System::Drawing::Point(150, 100);
			this->button5->Name = L"button5";
			this->button5->Size = System::Drawing::Size(45, 45);
			this->button5->TabIndex = 6;
			this->button5->Text = L"3";
			this->button5->UseVisualStyleBackColor = false;
			this->button5->Click += gcnew System::EventHandler(this, &Form1::button5_Click);
			// 
			// button6
			// 
			this->button6->BackColor = System::Drawing::Color::Green;
			this->button6->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button6->Location = System::Drawing::Point(210, 100);
			this->button6->Name = L"button6";
			this->button6->Size = System::Drawing::Size(45, 45);
			this->button6->TabIndex = 7;
			this->button6->Text = L"4";
			this->button6->UseVisualStyleBackColor = false;
			this->button6->Click += gcnew System::EventHandler(this, &Form1::button6_Click);
			// 
			// label2
			// 
			this->label2->AutoSize = true;
			this->label2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label2->Location = System::Drawing::Point(28, 152);
			this->label2->Name = L"label2";
			this->label2->Size = System::Drawing::Size(72, 16);
			this->label2->TabIndex = 8;
			this->label2->Text = L"状態入力";
			// 
			// button7
			// 
			this->button7->BackColor = System::Drawing::Color::Green;
			this->button7->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button7->Location = System::Drawing::Point(270, 100);
			this->button7->Name = L"button7";
			this->button7->Size = System::Drawing::Size(45, 45);
			this->button7->TabIndex = 9;
			this->button7->Text = L"5";
			this->button7->UseVisualStyleBackColor = false;
			this->button7->Click += gcnew System::EventHandler(this, &Form1::button7_Click);
			// 
			// button8
			// 
			this->button8->BackColor = System::Drawing::Color::Green;
			this->button8->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button8->Location = System::Drawing::Point(30, 171);
			this->button8->Name = L"button8";
			this->button8->Size = System::Drawing::Size(45, 45);
			this->button8->TabIndex = 10;
			this->button8->Text = L"1";
			this->button8->UseVisualStyleBackColor = false;
			// 
			// button9
			// 
			this->button9->BackColor = System::Drawing::Color::Green;
			this->button9->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button9->Location = System::Drawing::Point(90, 171);
			this->button9->Name = L"button9";
			this->button9->Size = System::Drawing::Size(45, 45);
			this->button9->TabIndex = 11;
			this->button9->Text = L"2";
			this->button9->UseVisualStyleBackColor = false;
			// 
			// label3
			// 
			this->label3->AutoSize = true;
			this->label3->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label3->Location = System::Drawing::Point(51, 237);
			this->label3->Name = L"label3";
			this->label3->Size = System::Drawing::Size(36, 16);
			this->label3->TabIndex = 12;
			this->label3->Text = L"AN4";
			// 
			// label4
			// 
			this->label4->AutoSize = true;
			this->label4->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label4->Location = System::Drawing::Point(159, 237);
			this->label4->Name = L"label4";
			this->label4->Size = System::Drawing::Size(36, 16);
			this->label4->TabIndex = 13;
			this->label4->Text = L"AN5";
			// 
			// label5
			// 
			this->label5->AutoSize = true;
			this->label5->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label5->Location = System::Drawing::Point(258, 237);
			this->label5->Name = L"label5";
			this->label5->Size = System::Drawing::Size(36, 16);
			this->label5->TabIndex = 14;
			this->label5->Text = L"AN6";
			// 
			// textBox2
			// 
			this->textBox2->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 15.75F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox2->Location = System::Drawing::Point(30, 256);
			this->textBox2->Name = L"textBox2";
			this->textBox2->Size = System::Drawing::Size(79, 28);
			this->textBox2->TabIndex = 15;
			this->textBox2->Text = L"1.023 V";
			this->textBox2->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox3
			// 
			this->textBox3->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 15.75F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox3->Location = System::Drawing::Point(135, 256);
			this->textBox3->Name = L"textBox3";
			this->textBox3->Size = System::Drawing::Size(79, 28);
			this->textBox3->TabIndex = 16;
			this->textBox3->Text = L"1.023 V";
			this->textBox3->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// textBox4
			// 
			this->textBox4->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 15.75F, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->textBox4->Location = System::Drawing::Point(234, 256);
			this->textBox4->Name = L"textBox4";
			this->textBox4->Size = System::Drawing::Size(81, 28);
			this->textBox4->TabIndex = 17;
			this->textBox4->Text = L"1.023 V";
			this->textBox4->TextAlign = System::Windows::Forms::HorizontalAlignment::Center;
			// 
			// timer1
			// 
			this->timer1->Tick += gcnew System::EventHandler(this, &Form1::timer1_Tick);
			// 
			// label6
			// 
			this->label6->AutoSize = true;
			this->label6->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 12, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->label6->Location = System::Drawing::Point(35, 221);
			this->label6->Name = L"label6";
			this->label6->Size = System::Drawing::Size(40, 16);
			this->label6->TabIndex = 18;
			this->label6->Text = L"計測";
			// 
			// button10
			// 
			this->button10->BackColor = System::Drawing::Color::Green;
			this->button10->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button10->Location = System::Drawing::Point(150, 171);
			this->button10->Name = L"button10";
			this->button10->Size = System::Drawing::Size(45, 45);
			this->button10->TabIndex = 19;
			this->button10->Text = L"3";
			this->button10->UseVisualStyleBackColor = false;
			// 
			// button11
			// 
			this->button11->BackColor = System::Drawing::Color::Green;
			this->button11->Font = (gcnew System::Drawing::Font(L"MS UI Gothic", 18, System::Drawing::FontStyle::Regular, System::Drawing::GraphicsUnit::Point, 
				static_cast<System::Byte>(128)));
			this->button11->Location = System::Drawing::Point(210, 171);
			this->button11->Name = L"button11";
			this->button11->Size = System::Drawing::Size(45, 45);
			this->button11->TabIndex = 20;
			this->button11->Text = L"4";
			this->button11->UseVisualStyleBackColor = false;
			// 
			// Form1
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 12);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(345, 306);
			this->Controls->Add(this->button11);
			this->Controls->Add(this->button10);
			this->Controls->Add(this->label6);
			this->Controls->Add(this->textBox4);
			this->Controls->Add(this->textBox3);
			this->Controls->Add(this->textBox2);
			this->Controls->Add(this->label5);
			this->Controls->Add(this->label4);
			this->Controls->Add(this->label3);
			this->Controls->Add(this->button9);
			this->Controls->Add(this->button8);
			this->Controls->Add(this->button7);
			this->Controls->Add(this->label2);
			this->Controls->Add(this->button6);
			this->Controls->Add(this->button5);
			this->Controls->Add(this->button4);
			this->Controls->Add(this->button3);
			this->Controls->Add(this->label1);
			this->Controls->Add(this->button2);
			this->Controls->Add(this->textBox1);
			this->Controls->Add(this->button1);
			this->Name = L"Form1";
			this->Text = L"汎用PIOホスト　WinUSB";
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion


	/******************* USB接続ボタンの処理 ****************************/
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

		The ultimate objective of the following code is to call WinUsb_Initialize(), which gets an interface handle
		to a specific interface on a USB device.  This handle will be needed later when calling WinUsb_WritePipe()
		and WinUsb_ReadPipe().  These functions are used to actually send and receive application related data 
		to/from the USB peripheral device.

		However, in order to call WinUsb_Initialize(), we first need to get the device path for the USB device
		with the correct VID and PID.  Getting the device path is a multi-step round about process, which
		requires calling several of the SetupDixxx() functions provided by setupapi.dll.
		*/


		//Globally Unique Identifier (GUID). Windows uses GUIDs to identify things.  This GUID needs to match
		//the GUID that is used in the .INF file used to install the WinUSB driver onto the system.
		//The INF file creates a register entry which associates a GUID with the WinUSB device.  In order for
		//a user mode application (such as this one) to find the USB device on the bus, it needs to known the
		//correct GUID that got put into the registry.
		GUID InterfaceClassGuid = {0x58D07210, 0x27C1, 0x11DD, 0xBD, 0x0B, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66}; 

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
		BOOL BoolStatus = FALSE;

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

			//Convert both strings to lower case.  This makes the code more robust/portable accross OS Versions
			DeviceIDFromRegistry = DeviceIDFromRegistry->ToLowerInvariant();	
			DeviceIDToFind = DeviceIDToFind->ToLowerInvariant();				
			//Now check if the hardware ID we are looking at contains the correct VID/PID
			MatchFound = DeviceIDFromRegistry->Contains(DeviceIDToFind);		
			if(MatchFound == true)
			{
				//Device must have been found.  Open WinUSB interface handle now.  In order to do this, we will need the actual device path first.
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

				//We now have the proper device path, and we can finally open a device handle to the device.
				//WinUSB requires the device handle to be opened with the FILE_FLAG_OVERLAPPED attribute.
				MyDeviceHandle = CreateFile((DetailedInterfaceDataStructure->DevicePath), GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_FLAG_OVERLAPPED, 0);

				ErrorStatus = GetLastError();
				if(ErrorStatus == ERROR_SUCCESS)
				{
					//Now get the WinUSB interface handle by calling WinUsb_Initialize() and providing the device handle.
					BoolStatus = WinUsb_Initialize(MyDeviceHandle, &MyWinUSBInterfaceHandle);
					if(BoolStatus == TRUE)
					{
						//If gets here, the "MyWinUSBInterfaceHandle" was initialized successfully.
						//May begin using the MyWinUSBInterfaceHandle handle in WinUsb_WritePipe() and
						//WinUsb_ReadPipe() function calls now.  Those are the functions for writing/reading to
						//the USB device's endpoints.

						/*** 接続正常完了 ****/
						textBox1->Text = "Connected OK!";
						timer1->Interval = 500;					// タイマ１500msecインターバル
						timer1->Enabled = TRUE;					// タイマ１スタート
					}
				}
				SetupDiDestroyDeviceInfoListUM(DeviceInfoTable);	//Clean up the old structure we no longer need.
				return;
			}
			InterfaceIndex++;	
			//Keep looping until we either find a device with matching VID and PID, or until we run out of items.
		}//end of while(true)	
	//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------
	 }

	/*********************** 終了ボタンの処理 *****************************/
	private: System::Void button2_Click(System::Object^  sender, System::EventArgs^  e) {
			 /** フォームを閉じて終了　*/
			 this->Close();
	}
	/*********************** DO制御ボタンの処理 ***************************/
	private: System::Void button3_Click(System::Object^  sender, System::EventArgs^  e) {
			 /***** DO1制御コマンド送信 *****/
			OutputPacketBuffer[0] = 0x31;
			OutputPacketBuffer[1] = 0x31;
			if(button3->BackColor  == Color::Green)
				OutputPacketBuffer[2] = 0x31;			// On制御
			else
				OutputPacketBuffer[2] = 0x30;			// Off制御
			WinUsb_WritePipe(MyWinUSBInterfaceHandle, 0x01, &OutputPacketBuffer[0], 64, &BytesWritten, NULL);  
			/***** 応答受信 *****/
			WinUsb_ReadPipe(MyWinUSBInterfaceHandle, 0x81, &InputPacketBuffer[0], 64, &BytesRead, NULL);
			if(InputPacketBuffer[2] == 0x31)
				button3->BackColor = Color::Red;
			else
				button3->BackColor = Color::Green;
	}
	private: System::Void button4_Click(System::Object^  sender, System::EventArgs^  e) {
			 /***** DO2制御コマンド送信 *****/
			OutputPacketBuffer[0] = 0x31;
			OutputPacketBuffer[1] = 0x32;
			if(button4->BackColor  == Color::Green)
				OutputPacketBuffer[2] = 0x31;			// On制御
			else
				OutputPacketBuffer[2] = 0x30;			// Off制御
			WinUsb_WritePipe(MyWinUSBInterfaceHandle, 0x01, &OutputPacketBuffer[0], 64, &BytesWritten, NULL);  
			/***** 応答受信 *****/
			WinUsb_ReadPipe(MyWinUSBInterfaceHandle, 0x81, &InputPacketBuffer[0], 64, &BytesRead, NULL);
			if(InputPacketBuffer[2] == 0x31)
				button4->BackColor = Color::Red;
			else
				button4->BackColor = Color::Green;

	}
	private: System::Void button5_Click(System::Object^  sender, System::EventArgs^  e) {
			 /***** DO3制御コマンド送信 *****/
			OutputPacketBuffer[0] = 0x31;
			OutputPacketBuffer[1] = 0x33;
			if(button5->BackColor  == Color::Green)
				OutputPacketBuffer[2] = 0x31;			// On制御
			else
				OutputPacketBuffer[2] = 0x30;			// Off制御
			WinUsb_WritePipe(MyWinUSBInterfaceHandle, 0x01, &OutputPacketBuffer[0], 64, &BytesWritten, NULL);  
			/***** 応答受信 *****/
			WinUsb_ReadPipe(MyWinUSBInterfaceHandle, 0x81, &InputPacketBuffer[0], 64, &BytesRead, NULL);
			if(InputPacketBuffer[2] == 0x31)
				button5->BackColor = Color::Red;
			else
				button5->BackColor = Color::Green;
	}
	private: System::Void button6_Click(System::Object^  sender, System::EventArgs^  e) {
			 /***** DO4制御コマンド送信 *****/
			OutputPacketBuffer[0] = 0x31;
			OutputPacketBuffer[1] = 0x34;
			if(button6->BackColor  == Color::Green)
				OutputPacketBuffer[2] = 0x31;			// On制御
			else
				OutputPacketBuffer[2] = 0x30;			// Off制御
			WinUsb_WritePipe(MyWinUSBInterfaceHandle, 0x01, &OutputPacketBuffer[0], 64, &BytesWritten, NULL);  
			/***** 応答受信 *****/
			WinUsb_ReadPipe(MyWinUSBInterfaceHandle, 0x81, &InputPacketBuffer[0], 64, &BytesRead, NULL);
			if(InputPacketBuffer[2] == 0x31)
				button6->BackColor = Color::Red;
			else
				button6->BackColor = Color::Green;
	}
	private: System::Void button7_Click(System::Object^  sender, System::EventArgs^  e) {
			 /***** DO5制御コマンド送信 *****/
			OutputPacketBuffer[0] = 0x31;
			OutputPacketBuffer[1] = 0x35;
			if(button7->BackColor  == Color::Green)
				OutputPacketBuffer[2] = 0x31;			// On制御
			else
				OutputPacketBuffer[2] = 0x30;			// Off制御
			WinUsb_WritePipe(MyWinUSBInterfaceHandle, 0x01, &OutputPacketBuffer[0], 64, &BytesWritten, NULL);  
			/***** 応答受信 *****/
			WinUsb_ReadPipe(MyWinUSBInterfaceHandle, 0x81, &InputPacketBuffer[0], 64, &BytesRead, NULL);
			if(InputPacketBuffer[2] == 0x31)
				button7->BackColor = Color::Red;
			else
				button7->BackColor = Color::Green;

	}

	/************ タイマ１インターバルイベント、一括状態表示処理 ************/
	private: System::Void timer1_Tick(System::Object^  sender, System::EventArgs^  e) {
			unsigned int ADCValue;
			 
			/***** 一括状態要求メッセージ準備 *****/
			OutputPacketBuffer[0] = 0x34;				// 一括状態要求コマンド
			OutputPacketBuffer[1] = 0x31;				// ダミー
			/***** 一括状態要求送信 *****/
			WinUsb_WritePipe(MyWinUSBInterfaceHandle, 0x01, &OutputPacketBuffer[0], 64, &BytesWritten, NULL);
			/***** 返送データ受信 *****/
			WinUsb_ReadPipe(MyWinUSBInterfaceHandle, 0x81, &InputPacketBuffer[0], 64, &BytesRead, NULL);
			/***** DI状態表示 *****/
			if(InputPacketBuffer[2] == 0x31)
				button8->BackColor = Color::Red;
			else
				button8->BackColor = Color::Green;
			if(InputPacketBuffer[3] == 0x31)
				button9->BackColor = Color::Red;
			else
				button9->BackColor = Color::Green;
			if(InputPacketBuffer[4] == 0x31)
				button10->BackColor = Color::Red;
			else
				button10->BackColor = Color::Green;
			if(InputPacketBuffer[5] == 0x31)
				button11->BackColor = Color::Red;
			else
				button11->BackColor = Color::Green;
			/***** 計測値表示 *****/
			/* AN4表示 */
			ADCValue = (InputPacketBuffer[7] * 256) + InputPacketBuffer[6];
			textBox2->Text = ADCValue.ToString();			// 数値を文字列にして表示
			/* AN5表示 */
			ADCValue = (InputPacketBuffer[9] * 256) + InputPacketBuffer[8];
			textBox3->Text = ADCValue.ToString();			// 数値を文字列にして表示
			/* AN6表示 */
			ADCValue = (InputPacketBuffer[11] * 256) + InputPacketBuffer[10];
			textBox4->Text = ADCValue.ToString();			// 数値を文字列にして表示
	 }
};
}

