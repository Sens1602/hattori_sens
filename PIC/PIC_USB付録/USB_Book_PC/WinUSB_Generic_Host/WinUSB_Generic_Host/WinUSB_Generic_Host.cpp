// WinUSB_Generic_Host.cpp : ���C�� �v���W�F�N�g �t�@�C���ł��B

#include "stdafx.h"
#include "Form1.h"

using namespace WinUSB_Generic_Host;

[STAThreadAttribute]
int main(array<System::String ^> ^args)
{
	// �R���g���[�����쐬�����O�ɁAWindows XP �r�W���A�����ʂ�L���ɂ��܂�
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false); 

	// ���C�� �E�B���h�E���쐬���āA���s���܂�
	Application::Run(gcnew Form1());
	return 0;
}
